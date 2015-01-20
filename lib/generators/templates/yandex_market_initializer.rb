YandexMarket.configure do |config|
  config.file_name = "snippets.xml"
  config.shop = {
    
    name:    "my_shop",
    company: "my_company",
    url:     "http://my_shop.com",
    
    currencies: [ # or currencies: Proc.new { ... }, which builds required array of hashes
      {id: :RUR, rate: 1, plus: 0}
      #...add more currencies if necessary
    ],
    
    categories: [ # or categories: Proc.new { ... }, which builds required array of hashes
      {id: 1, name: "Books"},
      {id: 10, parent_id: 1, name: "Fantastic" }
      #...add more root or descendant categories if necessary
    ]
  }
end