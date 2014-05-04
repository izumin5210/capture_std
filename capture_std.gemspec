# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capture_std/version'

Gem::Specification.new do |spec|
  spec.name          = "capture_std"
  spec.version       = CaptureStd::VERSION
  spec.authors       = ["izumin5210"]
  spec.email         = ["masayuki@izumin.info"]
  spec.summary       = %q{Add `capture` to Kernel.}
  spec.description   = %q{Add `capture` to Kernel.}
  spec.homepage      = "http://izumin.info/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
