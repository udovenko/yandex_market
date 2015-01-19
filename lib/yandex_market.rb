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
    attr_accessor :option

    def initialize
      @option = 'default_option'
    end
  end
end
