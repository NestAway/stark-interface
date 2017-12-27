# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stark/interface/version'

Gem::Specification.new do |spec|
  spec.name          = "stark-interface"
  spec.version       = Stark::Interface::VERSION
  spec.authors       = ["yourname"]
  spec.email         = ["yourname@domain.com"]

  spec.summary       = "stark Summary"
  spec.description   = "stark Description"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib","lib/stark"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "grpc-tools"
end
