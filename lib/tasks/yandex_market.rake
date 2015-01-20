namespace :yandex_market do
  desc 'my plugins rake task'
  task generate: :environment do
    puts "Buildikng YMl file #{YandexMarket::configuration.file_name}..."
    YandexMarket::Xml::build
    puts "YML file was built successfully!"
  end
end