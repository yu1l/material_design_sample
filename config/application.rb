require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Material
  class Application < Rails::Application
    config.time_zone = 'Tokyo'

    config.i18n.default_locale = :ja

    config.active_record.raise_in_transactional_callbacks = true
    config.assets.paths << Rails.root.join('vendor', 'assets', 'bower_components')
  end
end
