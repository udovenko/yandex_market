# This is a YML file configuration template. 
# See http://help.yandex.ru/webmaster/goods-prices/technical-requirements.xml for details.
YandexMarket.configure do |config|
  config.file_name = "snippets.xml"
  config.shop = {
    
    name:    "my_shop",            # required!
    company: "my_company",         # required!
    url:     "http://my_shop.com", # required!
    phone:   "+7 (123) 456 78 91",
    
    currencies: [ # or currencies: Proc.new { ... }, which builds required array of hashes
      {id: :RUR, rate: 1, plus: 0},
      {id: :USD, rate: :CBRF }
      #...add more currencies if necessary
    ],
    
    categories: [ # or categories: Proc.new { ... }, which builds required array of hashes
      {id: 1, name: "Books"},
      {id: 10, parentId: 1, name: "Fantastic" }
      #...add more root or descendant categories if necessary
    ],
    
    # Common delivery cost, can be overridden by the same tag within offer:
    local_delivery_cost: 200,
    
    offers: [ # or offers: Proc.new { ... }, which builds required array of hashes
      { # Offer with simple offer description:
        id: 12346,                                               # required!
        available: true,                                         # required!
        url: "http://best.seller.ru/product_page.asp?pid=12348", # required!
        price: 699.54,                                           # required!
        currencyId: "USD",                                       # required!
        categoryId: 6,                                           # required!
        delivery: false,                                         # required!
        local_delivery_cost: 300,
        name: "Золотые наручные часы",                           # required!
        vendor: "Longines",
        vendorCode: "A1234567B",
        description: "Изящные золотые часы.",
        country_of_origin: "Швейцария"
      },
      { # Offer with common "vendor.model" description:
        id: 12341,                                               # required! 
        type: "vendor.model",                                    # required!
        available: true,                                         # required!   
        url: "http://best.seller.ru/product_page.asp?pid=12344", # required!
        price: 700,                                              # required!
        currencyId: "USD",                                       # required!
        categoryId: 6,                                           # required!
        delivery: true,                                          # required!
        local_delivery_cost: 300,
        typePrefix: "Принтер",
        vendor: "НP",                                            # required!
        vendorCode: "CH366C",
        model: "Deskjet D2663",                                  # required!
        description: "Серия принтеров для людей, которым нужен
          надежный, простой в использовании цветной принтер 
          для повседневной печати.",
        manufacturer_warranty: true,
        country_of_origin: "Япония"
      }
      # ... You can use more offer description types such as "book","audiobook",
      # "artist.title" and so on. See Yandex instructions for details.
    ] 
  }
end