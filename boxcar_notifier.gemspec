# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boxcar_notifier/version'

Gem::Specification.new do |spec|
  spec.name          = "boxcar_notifier"
  spec.version       = BoxcarNotifier::VERSION
  spec.authors       = ["Nobuyuki Sakai"]
  spec.email         = ["gonhainu.sphere@gmail.com"]
  spec.summary       = %q{this is a new boxcar api notify}
  spec.description   = %q{https://boxcar.io/}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
