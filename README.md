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

Update your Gemfile to include this gem:

```ruby
...
gem 'fontawesome-rails-cdn'
```

Run `bundle install` to update your local gems. Restart your Rails server if necessary.

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

## Changing Default Behavior

### Forcing development mode to use the CDN

You can ensure the development environment follows the same behavior as production by using the `force: true` parameter in the `fontawesome_stylesheet_link_tag`.

```ruby
    <%= fontawesome_stylesheet_link_tag :netdna, force: true %>
```

### Using a specific Font Awesome Version

Passing the `version` parameter in the `fontawesome_stylesheet_link_tag` allows you to override the default behavior. If a specific version is not included in the gem, it will be pulled from the CDN even if in development mode.

```ruby
    <%= fontawesome_stylesheet_link_tag :netdna, version: "3.2.1" %>
```


## Versioning

The gem follows the versioning used by Font Awesome. I.e., the 3.2.1 version of the gem defaults to version 3.2.1 of Font Awesome. the 4.0.3 version of the gem points to the 4.0.3 version of Font Awesome.

All gems can point to a specific version of Font Awesome hosted on the CDN by passing the `version` option into the `fontawesome_stylesheet_link_tag`.

```ruby
    <%= fontawesome_stylesheet_link_tag :netdna, version: "3.2.1" %>
```

## License
(c) 2014 Christopher Brito

MIT License - reference [LICENSE](/LICENSE) file