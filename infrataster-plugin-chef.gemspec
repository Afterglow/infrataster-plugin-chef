# coding: utf-8
# rubocop:disable Style/RegexpLiteral
Gem::Specification.new do |spec|
  spec.name          = 'infrataster-plugin-chef'
  spec.version       = '0.0.2'
  spec.authors       = ['Paul Thomas']
  spec.email         = ['pthomas@dyn.com']
  spec.summary       = 'Add Chef node data to Infrataster'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'infrataster', '~> 0.2.0'
  spec.add_runtime_dependency 'chef', '~> 11.12'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
end
