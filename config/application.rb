require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Hook
  class Application < Rails::Application
    config.load_defaults 7.0

    config.time_zone = "UTC"
    config.eager_load_paths << Rails.root.join("lib")

    config.generators do |g|
      g.test_framework :rspec,
        view_specs: false,
        helper_specs: false,
        routing_specs: false,
        controller_specs: true,
        request_specs: true
    end
  end
end
