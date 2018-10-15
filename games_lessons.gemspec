# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'games_lessons/version'

Gem::Specification.new do |spec|
  spec.name          = "games_lessons"
  spec.version       = GamesLessons::VERSION
  spec.authors       = ["Peter Camilleri"]
  spec.email         = "peter.c.camilleri@gmail.com"
  spec.homepage      = "http://www.foorth.org/"
  spec.description   = "A brief tutorial in using Ruby for writing games with Gosu."
  spec.summary       = "A brief tutorial in using Ruby for writing games."
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  spec.require_paths = ["lib"]


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)/}) }
  end

  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>=2.3.3'

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'minitest_visible', ">= 0.1.1"
  spec.add_development_dependency 'reek', "~> 3.0"

  spec.add_runtime_dependency 'gosu', ">= 0.13.3"
end
