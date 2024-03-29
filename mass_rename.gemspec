# frozen_string_literal: true

require_relative 'lib/mass_rename/version'

Gem::Specification.new do |spec|
  spec.name          = 'mass_rename'
  spec.version       = MassRename::VERSION
  spec.authors       = ['Luc Street']
  spec.homepage      = 'https://github.com/0xSiO/mass_rename'
  spec.summary       = 'Mass rename files.'
  spec.description   = 'Filter and rename multiple files in a directory or subdirectories with regular expressions.'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.4.0')
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
end
