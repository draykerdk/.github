#!/usr/bin/env bash
set -euo pipefail

# Creates or updates every label defined in labels.yml. It never deletes a label.
# Requires ruby (to read labels.yml) and an authenticated gh CLI.

if [[ $# -eq 0 ]]; then
  echo "usage: scripts/sync-labels.sh owner/repo [owner/repo ...]" >&2
  exit 2
fi

labels_file="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)/labels.yml"

definitions="$(ruby -ryaml -e '
  labels = YAML.load_file(ARGV[0])
  abort "labels.yml must be a list" unless labels.is_a?(Array)
  labels.each do |label|
    name, color, description = label.values_at("name", "color", "description").map(&:to_s)
    abort "invalid label: #{label.inspect}" if name.empty? || color !~ /\A\h{6}\z/ || [name, description].any? { |v| v =~ /[\t\n]/ }
    puts [name, color, description].join("\t")
  end
' "$labels_file")"

for repository in "$@"; do
  echo "syncing labels in $repository"
  while IFS=$'\t' read -r name color description; do
    gh label create "$name" --repo "$repository" --color "$color" --description "$description" --force < /dev/null
  done <<< "$definitions"
done
