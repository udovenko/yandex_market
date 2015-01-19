require 'yandex_market'
require 'rails'
module YandexMarket
  class Railtie < Rails::Railtie
    railtie_name :yandex_market

    rake_tasks do
      load "tasks/yandex_market.rake"
    end
  end
end