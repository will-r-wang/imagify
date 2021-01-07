require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module Imagify
  class Application < Rails::Application
    config.load_defaults 6.1

    config.autoload_paths << (Rails.root + 'lib').to_s
  end
end
