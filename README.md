# YandexMarket

Simple Rails gem for creating Yandex Market Language XML file.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'yandex_market', git: 'git://github.com/udovenko/yandex_market.git'
```

And then execute:

    $ bundle install
    $ rails g yandex_market:install

Last command will create initializer with name "yandex_market.rb" in your Rails initializers directory.

## Usage

Check out the initializer structure and http://help.yandex.ru/webmaster/goods-prices/technical-requirements.xml.

## Contributing

1. Fork it (https://github.com/[my-github-username]/yandex_market/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
