fontawesome-rails-cdn
=====================

Easily add Font Awesome to your Rails 3 or 4 project leveraging a CDN.

* Supports Rails 3.x and 4.x
* Supports Font Awesome 4.0.3 and 3.2.1

## Benefits
* Offloads loading of the Font Awesome assets from your host, allowing your browser to execute more HTTP requests in parallel so your pages render faster.
* Leverages the cached copy on a client so your page will load faster if a user already has visited a site using Font Awesome.

## Features
* Support for the latest version of [Font Awesome](http://fontawesome.io).
* Falls back to local static assets when running in development mode. (This can be overridden.)


## Installation


__Gemfile__
```ruby
...
gem 'fontawesome-rails-cdn'
```


__Layout__

The gem will add the  `fontawesome_stylesheet_link_tag` helper. Add this to your layout files inside the `head` section to automatically include.

```html
<!DOCTYPE html>
<html>
  <head>
    ...
    <%= fontawesome_stylesheet_link_tag %>
    ...
  </head>
 ...
```

## License
(c) 2014 Christopher Brito

MIT License - reference [LICENSE](/LICENSE) file