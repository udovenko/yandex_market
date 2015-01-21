module YandexMarket
  module Generators
    
    
    # Creates gem initializer.
    #
    # @author Denis Udovenko
    # @version 1.0.1
    class InstallGenerator < Rails::Generators::Base
      
      
      source_root File.expand_path("../../templates", __FILE__)
      
      
      desc "Creates YnadexMarket initializer for your application"

      
      # Copies initializer template to Rails initializers directory.
      def copy_initializer
        template "yandex_market_initializer.rb", "config/initializers/yandex_market.rb"
        puts "Install complete!"
      end
    end
  end
end