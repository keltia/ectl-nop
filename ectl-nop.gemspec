# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ectl/nop/version'

Gem::Specification.new do |spec|
  spec.name          = "ectl-nop"
  spec.version       = ECTL::NOP::VERSION
  spec.authors       = ["Ollivier Robert"]
  spec.email         = ["roberto@keltia.net"]
  spec.description   = %q{Easy way to use EUROCONTROL/CFMU NOP B2B Web Services.}
  spec.summary       = %q{Wraps WSDL files into propre classes for NOP B2B Usage.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'yard'

  spec.add_dependency 'savon'
end
