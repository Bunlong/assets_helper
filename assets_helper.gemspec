# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'assets_helper/version'

Gem::Specification.new do |spec|
  spec.name          = "assets_helper"
  spec.version       = AssetsHelper::VERSION
  spec.authors       = ["Bunlong"]
  spec.email         = ["bunlong.van@gmail.com"]
  spec.description   = %q{assets helper is the helper that use to include css and javascript by controller name automatically}
  spec.summary       = %q{assets helper is the helper that use to include css and javascript by controller name automatically, it mean that it include only css and javascript file in the controller that you are standing.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "content_for_in_controllers"
end
