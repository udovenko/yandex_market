require "builder"

module YandexMarket
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
        end
      end
      
      #xml = builder.person { |b| b.name("Jim"); b.phone("555-1234") }
      #xml #=> <person><name>Jim</name><phone>555-1234</phone></person>
      
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
        @builder.name    YandexMarket::configuration.shop[:name]
        @builder.company YandexMarket::configuration.shop[:company]
        @builder.url     YandexMarket::configuration.shop[:url]
      end
      
      
      # Builds currencies list.
      def self.currencies
        @builder.currencies do
          YandexMarket::configuration.shop[:currencies].each do |currency|
            @builder.currency id: currency[:id], rate: currency[:rate], plus: currency[:plus]
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