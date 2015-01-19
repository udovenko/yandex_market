# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yandex_market/version'

Gem::Specification.new do |spec|
  spec.name          = "yandex_market"
  spec.version       = YandexMarket::VERSION
  spec.authors       = ["Denis Udovenko"]
  spec.email         = ["denis.e.udovenko@gmail.com"]
  spec.summary       = %q{Creates Yandex Market Languge file}
  spec.description   = %q{Creates Yandex Market Languge file for exporting 
    categories and products data from your shop app}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", "~> 10.0"
end
