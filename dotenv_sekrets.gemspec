# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dotenv_sekrets/version'

Gem::Specification.new do |spec|
  spec.name          = "dotenv_sekrets"
  spec.version       = DotenvSekrets::VERSION
  spec.authors       = ["andrea longhi"]
  spec.email         = ["andrea@spaghetticode.it"]

  spec.summary       = %q{Dotenv goodness with Sekrets encryption}
  spec.description   = %q{Seamlessly encrypt/decrypt/edit Dotenv files with the help of Sekrets gem.}
  spec.homepage      = 'https://github.com/mikamai/dotenv_sekrets'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_dependency 'rails'
  spec.add_dependency 'dotenv',       '>= 2.1.1'
  spec.add_dependency 'dotenv-rails', '>= 2.1.1'
  spec.add_dependency 'sekrets',      '>= 1.10.0'
end
