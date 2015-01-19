require 'yandex_market'
require 'rails'
module YandexMarket
  class Railtie < Rails::Railtie
    railtie_name :yandex_market

    config.to_prepare do
      #YandexMarket.configure
    end
    
    
    rake_tasks do
      load "tasks/yandex_market.rake"
    end
  end
end