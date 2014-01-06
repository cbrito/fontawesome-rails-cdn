# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fontawesome-rails-cdn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christopher Brito"]
  gem.email         = ["cbrito@gmail.com"]
  gem.description   = %q{Font Awesome CDN support for Rails 3 and 4}
  gem.summary       = %q{Font Awesome CDN support for Rails 3 and 4}
  gem.homepage      = "https://github.com/cbrito/fontawesome-rails-cdn"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "fontawesome-rails-cdn"
  gem.require_paths = ["lib"]
  gem.version       = FontAwesome::Rails::CDN::VERSION
  gem.license       = 'MIT'
end