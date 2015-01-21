require 'yandex_market'
require 'rails'


module YandexMarket
  
  
  # Railtie for the gem.
  #
  # @author Denis Udovenko
  # @version 1.0.1
  class Railtie < Rails::Railtie
    
    
    railtie_name :yandex_market
  
    
    rake_tasks do
      load "tasks/yandex_market.rake"
    end
  end
end