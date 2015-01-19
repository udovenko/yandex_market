module Jem
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path("../../templates", __FILE__)
      desc "Creates YnadexMarket initializer for your application"

      def copy_initializer
        template "yandex_market_initializer.rb", "config/initializers/yandex_market.rb"

        puts "Install complete! Truly Outrageous!"
      end
    end
  end
end