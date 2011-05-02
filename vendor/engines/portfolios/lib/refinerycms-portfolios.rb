require 'refinerycms-base'

module Refinery
  module Portfolios
    class Engine < Rails::Engine
      initializer "static assets" do |app|
        app.middleware.insert_after ::ActionDispatch::Static, ::ActionDispatch::Static, "#{root}/public"
      end

      config.after_initialize do
        Refinery::Plugin.register do |plugin|
          plugin.name = "portfolios"
          plugin.activity = {
            :class => Portfolio,
            :title => 'name'
          }
        end
      end
    end
  end
end
