# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-itamae/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-itamae"
  spec.version       = Vagrant::Itamae::VERSION
  spec.authors       = ["chiastolite"]
  spec.email         = ["chiastolite.1980@gmail.com"]
  spec.summary       = %q{Vagrant plugin for itamae}
  spec.description   = %q{Vagrant plugin for itamae}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'itamae'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
