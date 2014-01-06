module FontAwesome::Rails::CDN
  module ActionViewExtensions
    OFFLINE = ( ::Rails.env.development? )
    DEFAULT_HOST = :netdna
    FONTAWESOME_VERSIONS = [ '4.0.3', '3.2.1' ]

    def fontawesome_stylesheet_url(host = DEFAULT_HOST, options = {})
      fontawesome_cdn_url(host, options)
    end

    def fontawesome_stylesheet_link_tag(host = DEFAULT_HOST, options = {}, html_options = {})
      local = fontawesome_stylesheet_url(:local, options)

      if OFFLINE and !options[:force]
        stylesheet_link_tag(local, html_options)
      else
        stylesheet_link_tag(fontawesome_stylesheet_url(host, options), html_options)
      end
    end

  private

    def fontawesome_cdn_url(host, options = {})
      version  = options[:version] || FONTAWESOME_VERSIONS.first

      {
        :netdna => "//netdna.bootstrapcdn.com/font-awesome/#{version}/css/font-awesome.min.css",
        :local  => "font-awesome-#{version}.min.css"
      }[host]
    end
  end
end