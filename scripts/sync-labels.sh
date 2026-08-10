#!/usr/bin/env bash
set -euo pipefail

if [[ $# -eq 0 ]]; then
  echo "usage: scripts/sync-labels.sh owner/repo [owner/repo ...]" >&2
  exit 2
fi

labels=(
  "open-function|5CE02E|Concrete contribution small enough for one person to deliver."
  "motion|B388FF|Research or governance proposal for documented discussion."
  "claimed|6A6A80|A contributor has announced that they are working on this issue."
  "needs-review|E6B816|Delivered work is waiting for public review."
  "good first issue|00D0FF|Entry issue that requires little prior project context."
  "help wanted|FF5500|Maintainers are explicitly requesting outside participation."
  "documentation|00D0FF|Documentation, dates, links, translations or public explanations."
  "volunteer-introduction|0EC1E9|Public introduction generated from the volunteer journey."
  "partnership|E6B816|Public, non-confidential funding or partnership proposal."
  "skill:code|5CE02E|Code or implementation skill."
  "skill:research|B388FF|Research, modelling or formal review skill."
  "skill:design|FF5500|Product, visual or interaction design skill."
  "skill:documentation|00D0FF|Documentation, editing or translation skill."
  "skill:governance|E6B816|Governance, process or institutional analysis skill."
  "level:entry|5CE02E|No prior ecosystem context beyond the linked sources."
  "level:intermediate|00D0FF|Some component or domain context is expected."
  "level:advanced|B388FF|Deep technical, research or governance context is expected."
  "effort:small|5CE02E|Expected to fit within a short focused contribution."
  "effort:medium|E6B816|Expected to require several focused work sessions."
  "effort:large|FF5500|Needs fragmentation before it can become an open function."
)

for repository in "$@"; do
  echo "syncing labels in $repository"
  for definition in "${labels[@]}"; do
    IFS="|" read -r name color description <<< "$definition"
    gh label create "$name" --repo "$repository" --color "$color" --description "$description" --force
  done
done
