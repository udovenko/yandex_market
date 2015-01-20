YandexMarket.configure do |config|
  config.file_name = "snippets.xml"
  config.shop = {
    name:    "my_shop",
    company: "my_company",
    url:     "http://my_shop.com",
    currencies: [
      {id: :RUR, rate: 1, plus: 0}
      #...add more currencies if necessary
    ],
    categories: [
      {id: 1, name: "Books"},
      {id: 10, name: "Fantastic" }
      #...add more root or descendant categories if necessary
    ]
  }
end