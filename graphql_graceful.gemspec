# frozen_string_literal: true

require_relative "lib/graphql_graceful/version"

Gem::Specification.new do |spec|
  spec.name          = "graphql_graceful"
  spec.version       = GraphqlGraceful::VERSION
  spec.authors       = ["SerhiiSobolev"]
  spec.email         = ["sobolevsergeysom@gmail.com"]

  spec.summary       = "Gem based on graphql, but has a laconic structure of base gem files"
  spec.description   = "Gem based on graphql, but has a laconic structure of base graphql services classes. First of all, i "
  spec.homepage      = "https://github.com/SobolevSerhii/graphql_graceful"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.7.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/SobolevSerhii/graphql_graceful"
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "graphql"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rufo"
  spec.add_development_dependency "solargraph"
end
