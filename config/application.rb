require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Hook
  class Application < Rails::Application
    config.load_defaults 7.0

    config.generators do |g|
      g.system_tests :rspec
      g.test_framework :rspec
      g.integration_tool :rspec
    end
    
    config.time_zone = "Brasilia"
    config.eager_load_paths << Rails.root.join("lib")
  end
end
