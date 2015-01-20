module YandexMarket
  
  
  #
  #
  #
  class Configuration
    
    
    attr_accessor :file_name, :shop

    
    #
    #
    def initialize
      @file_name = "snippets.xml"
      @shop = {
        name:    "dummy_shop",
        company: "dummy_company",
        url:     "http://dummy_url.com",
        currencies: [],
        categories: []
      }
      
      
      #@products_collection = Product ? Product.all : []
    end
  end
end  