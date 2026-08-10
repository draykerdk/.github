#!/usr/bin/env ruby

require "date"
require "yaml"

path = ARGV.fetch(0, ".drayker/component.yml")
errors = []

begin
  data = YAML.safe_load(File.read(path), permitted_classes: [Date], aliases: false)
rescue StandardError => e
  warn "component contract could not be parsed: #{e.message}"
  exit 1
end

unless data.is_a?(Hash)
  warn "component contract must be a mapping"
  exit 1
end

forbidden = %w[
  status owner responsible assignee funding funding_gate sprint roadmap
  now next done later backlog waiting salary remuneration
]

walk = lambda do |value, location|
  case value
  when Hash
    value.each do |key, child|
      normalized = key.to_s.downcase.tr("-", "_")
      errors << "#{location}.#{key}: private/management field is forbidden" if forbidden.include?(normalized)
      walk.call(child, "#{location}.#{key}")
    end
  when Array
    value.each_with_index { |child, index| walk.call(child, "#{location}[#{index}]") }
  end
end
walk.call(data, "$")

check_keys = lambda do |hash, location, required, allowed = required|
  unless hash.is_a?(Hash)
    errors << "#{location}: expected a mapping"
    next
  end
  required.each { |key| errors << "#{location}.#{key}: required" unless hash.key?(key) }
  (hash.keys.map(&:to_s) - allowed).each { |key| errors << "#{location}.#{key}: unknown field" }
end

root_keys = %w[schema_version component]
check_keys.call(data, "$", root_keys)
errors << "$.schema_version: must equal 1" unless data["schema_version"] == 1

component = data["component"]
component_keys = %w[
  id name layer artifact_type problem scope non_scope dependencies implementation
  risks contributions source_of_truth last_reviewed
]
check_keys.call(component, "$.component", component_keys)

if component.is_a?(Hash)
  id = component["id"]
  errors << "$.component.id: invalid component id" unless id.is_a?(String) && id.match?(/\A[a-z0-9][a-z0-9.-]*\z/)

  %w[name problem].each do |key|
    value = component[key]
    errors << "$.component.#{key}: must be a non-empty string" unless value.is_a?(String) && !value.strip.empty?
  end

  layers = %w[KERNEL NETWORK SECURITY DEVICES PLATFORM PROTOCOL ORGANIZATION KNOWLEDGE COMMUNITY PORTAL]
  errors << "$.component.layer: invalid value" unless layers.include?(component["layer"])

  artifact_types = %w[
    architecture research-proposal protocol governance-proposal project-framework
    community-entrypoint knowledge-base portal theme
  ]
  errors << "$.component.artifact_type: invalid value" unless artifact_types.include?(component["artifact_type"])

  %w[scope non_scope risks].each do |key|
    value = component[key]
    valid = value.is_a?(Array) && !value.empty? && value.all? { |item| item.is_a?(String) && !item.strip.empty? }
    errors << "$.component.#{key}: must be a non-empty string array" unless valid
  end

  dependencies = component["dependencies"]
  valid_dependencies = dependencies.is_a?(Array) &&
    dependencies.uniq.length == dependencies.length &&
    dependencies.all? { |item| item.is_a?(String) && item.match?(/\A[a-z0-9][a-z0-9.-]*\z/) }
  errors << "$.component.dependencies: must be a unique component-id array" unless valid_dependencies

  implementation = component["implementation"]
  implementation_keys = %w[level scope evidence]
  check_keys.call(implementation, "$.component.implementation", implementation_keys)
  if implementation.is_a?(Hash)
    errors << "$.component.implementation.level: invalid value" unless %w[none prototype operational].include?(implementation["level"])
    scope = implementation["scope"]
    errors << "$.component.implementation.scope: must be a non-empty string" unless scope.is_a?(String) && !scope.strip.empty?
    evidence = implementation["evidence"]
    unless evidence.is_a?(Array) && !evidence.empty?
      errors << "$.component.implementation.evidence: at least one evidence item is required"
    else
      evidence.each_with_index do |item, index|
        location = "$.component.implementation.evidence[#{index}]"
        check_keys.call(item, location, %w[type ref])
        next unless item.is_a?(Hash)
        errors << "#{location}.type: invalid value" unless %w[document prototype deployment test usage].include?(item["type"])
        ref = item["ref"]
        errors << "#{location}.ref: must be a non-empty string" unless ref.is_a?(String) && !ref.strip.empty?
      end
    end
  end

  contributions = component["contributions"]
  check_keys.call(contributions, "$.component.contributions", %w[availability entrypoint])
  if contributions.is_a?(Hash)
    errors << "$.component.contributions.availability: invalid value" unless %w[open paused closed].include?(contributions["availability"])
    entrypoint = contributions["entrypoint"]
    errors << "$.component.contributions.entrypoint: must be a non-empty string" unless entrypoint.is_a?(String) && !entrypoint.strip.empty?
  end

  source = component["source_of_truth"]
  check_keys.call(source, "$.component.source_of_truth", %w[repository path])
  if source.is_a?(Hash)
    repository = source["repository"]
    errors << "$.component.source_of_truth.repository: must point to draykerdk on GitHub" unless repository.is_a?(String) && repository.start_with?("https://github.com/draykerdk/")
    source_path = source["path"]
    errors << "$.component.source_of_truth.path: must be a non-empty string" unless source_path.is_a?(String) && !source_path.strip.empty?
  end

  begin
    reviewed = component["last_reviewed"]
    Date.iso8601(reviewed.to_s)
    errors << "$.component.last_reviewed: must use YYYY-MM-DD" unless reviewed.to_s.match?(/\A\d{4}-\d{2}-\d{2}\z/)
  rescue Date::Error
    errors << "$.component.last_reviewed: invalid date"
  end
end

if errors.empty?
  puts "valid Drayker component contract: #{path}"
  exit 0
end

warn errors.join("\n")
warn "#{errors.length} contract error(s)"
exit 1
