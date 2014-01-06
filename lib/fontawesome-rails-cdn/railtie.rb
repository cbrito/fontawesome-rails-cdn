module FontAwesome
  module Rails
    module CDN
      class Railtie < ::Rails::Railtie
        initializer 'fontawesome_cdn.action_view' do |app|
          ActiveSupport.on_load(:action_view) do
            include TwitterBootstrap::Rails::Cdn::ActionViewExtensions
          end
        end
      end # class Railtie
    end # module CDN
  end # module Rails
end # module FontAwesome