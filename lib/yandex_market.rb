require "yandex_market/version"
require "yandex_market/railtie" if defined?(Rails)

module YandexMarket
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
  end

  class Configuration
    attr_accessor :products

    def initialize
      @products = 'default_option'
    end
  end
end
