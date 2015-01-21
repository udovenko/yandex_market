module YandexMarket
  
  
  # Gem configuration class.
  #
  # @author Denis Udovenko
  class Configuration
    
    
    attr_accessor :file_name, :shop

    
    # Public constructor. Sets up configuration defaults.
    def initialize
      @file_name = "yandex_market.xml"
      @shop = {
        name:    "dummy_shop",
        company: "dummy_company",
        url:     "http://dummy_url.com",
        currencies: [],
        categories: [],
        offers:     []
      }
    end
  end
end  