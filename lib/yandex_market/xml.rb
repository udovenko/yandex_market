require "builder"

module YandexMarket
  
  
  #
  #
  class Xml
    
    
    #
    #
    def self.build
      @output = ""
      @builder = Builder::XmlMarkup.new(target: @output)
      
      build_header
      
      @builder.yml_catalog date: Time.now.strftime("%Y-%m-%d %H:%M") do
        @builder.shop do
          shop_details
          currencies
          categories
          offers
        end
      end
      
      save
    end
    
    
    private
    
      
      # Builds XML header.
      def self.build_header
        @builder.instruct!    
        @builder.declare! :DOCTYPE, :yml_catalog, :SYSTEM, "shops.dtd"
      end
    
      
      # Builds shop details information.
      def self.shop_details
        shop_details_keys = [:name, :company, :url, :local_delivery_cost]
        shop_details = YandexMarket::configuration.shop.slice *shop_details_keys
        
        shop_details.each do |key, value|
          @builder.tag! key, value
        end
      end
      
      
      # Builds currencies list.
      def self.currencies
        @builder.currencies do
          YandexMarket::configuration.shop[:currencies].each do |currency|
            @builder.currency id: currency[:id], rate: currency[:rate], plus: currency[:plus]
          end
        end
      end
      
      
      # Builds categories list.
      def self.categories
        
        # Accept categories as an array or as a proc result:
        categories = YandexMarket::configuration.shop[:categories]
        categories = categories.call if categories.class == Proc
        
        @builder.categories do
          categories.each do |category|
            @builder.category category
          end
        end
      end
      
      
      # Builds offers list.
      def self.offers
        
        # Accept offers as an array or as a proc result:
        offers = YandexMarket::configuration.shop[:offers]
        offers = offers.call if offers.class == Proc
               
        @builder.offers do
          
          offers.each do |offer|
            attribute_keys = [:id, :type, :available];
            attributes = offer.slice *attribute_keys
            nodes = offer.except *attribute_keys
            
            @builder.offer attributes do
              nodes.each do |key, value|
                @builder.tag! key, value, {}.merge(key == :categoryId ? { type: "Own" } : {})
              end
            end
          end
        end
      end
      
      
      # Saves builder output XML data to file according to configuration.
      def self.save
        file = File.new("public/#{YandexMarket::configuration.file_name}", "wb")
        file.write(@output)
        file.close
      end
  end
end