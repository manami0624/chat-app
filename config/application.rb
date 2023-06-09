require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module ChatApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.i18n.default_locale = :ja
    config.time_zone = 'Tokyo'

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.generators do |g|     #不要なファイルを生成しないように設定(下記の４つ)
      g.stylesheets false        #生成したファイルに対応したスタイルシート
      g.javascripts false        #生成したファイルに対応したJavaScriptファイル
      g.helper false             #生成したファイルに対応したヘルパー
      g.test_framework false     #アプリケーションをテストするためのファイル
    end
  end
end
