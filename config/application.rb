require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PixServer
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set schema format to sql
    config.active_record.schema_format = :sql

    # Use Fabricators over fixtures
    config.generators do |g|
      g.test_framework      :test_unit, fixture_replacement: :fabrication
      g.fixture_replacement :fabrication, dir: "test/fabricators"
    end

  end
end
