# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'active_merchant_patch_for_tenpay/version'

Gem::Specification.new do |gem|
  gem.name          = "active_merchant_patch_for_tenpay"
  gem.version       = ActiveMerchantPatchForTenpay::VERSION
  gem.authors       = ["Gang"]
  gem.email         = ["gokure@gmail.com"]
  gem.description   = %q{The integration patch of tenpay for ActiveMerchant}
  gem.summary       = %q{ActiveMerchant patch for Tenpay}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  gem.add_dependency("activemerchant", [">= 1.28.0"])
end
