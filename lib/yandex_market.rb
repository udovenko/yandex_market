require "yandex_market/version"
require "yandex_market/configuration"
require "yandex_market/xml"
require "yandex_market/railtie" if defined?(Rails)


module YandexMarket
  
  
  class << self
    attr_accessor :configuration
  end

  
  # Creates gem configuration instance. Accepts block with configuration 
  # instructions.
  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end
end
