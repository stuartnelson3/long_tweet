# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'long_tweet/version'

Gem::Specification.new do |spec|
  spec.name          = "long_tweet"
  spec.version       = LongTweet::VERSION
  spec.authors       = ["Stuart Nelson"]
  spec.email         = ["stuartnelson3@gmail.com"]
  spec.description   = %q{Create a long tweet and have it posted for your followers in top-to-bottom order}
  spec.summary       = %q{Tweet longer tweets in order}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_dependency "twitter", "~> 4.8"
end
