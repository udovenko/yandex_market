namespace :yandex_market do
  desc 'my plugins rake task'
  task generate: :environment do
    puts YandexMarket.configuration.products + " the rake task did something"
  end
end