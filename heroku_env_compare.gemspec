# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'heroku_env_compare/version'

Gem::Specification.new do |spec|
  spec.name          = "heroku_env_compare"
  spec.version       = HerokuEnvCompare::VERSION
  spec.authors       = ["David Elliott"]
  spec.email         = ["david@philosophie.is"]

  spec.summary       = %q{compare heroku env vars}
  spec.homepage      = "https://github.com/taboularasa/heroku_env_compare"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug", "~> 3.3"
end
