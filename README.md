# ActiveMerchant patch for Tenpay

The integration patch of tenpay for ActiveMerchant

## Installation

Add this line to your application's Gemfile:

    gem 'active_merchant_patch_for_tenpay', :github => 'gokure/active_merchant_patch_for_tenpay'

And then execute:

    $ bundle

## Usage

创建`initializers/tenpay.rb`并添加财付通密匙

```ruby
ActiveMerchant::Billing::Integrations::Tenpay.secret_key = "Your-Secret-Key"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
