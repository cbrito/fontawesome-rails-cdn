# -*- encoding: utf-8 -*-
require File.expand_path('../lib/fontawesome-rails-cdn/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Christopher Brito"]
  gem.email         = ["cbrito@gmail.com"]
  gem.description   = %q{Font Awesome CDN support for Rails 3 and 4}
  gem.summary       = %q{Leverage Font Awesome within your Rails project using a Content Delivery Network (CDN) for faster page load and rendering time.}
  gem.homepage      = "https://github.com/cbrito/fontawesome-rails-cdn"

  gem.files         = Dir["{lib,vendor}/**/*"] + ["LICENSE", "README.md"]
  gem.name          = "fontawesome-rails-cdn"
  gem.require_paths = ["lib", "vendor"]
  gem.version       = FontAwesome::Rails::CDN::VERSION
  gem.license       = 'MIT'
end