# I18n::Localizer

The gem is based the idea that all objects can be localized: Date, Time, DateTime but also Numeric, Money, Measure, Enumerize::Value, Cat...

## Installation

Add this line to your application's Gemfile:

    gem 'i18n-localizer'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install i18n-localizer

## Usage

### Definition

```ruby
# Example with format parameter
I18n.add_localizer(Cat) do |cat, options|
  I18n.translate("cat.#{options[:format]}", name: cat.name, age: cat.age.l)
end

tom = Cat.new("Tom", 4)
tom.l                # => "Tom"
tom.l(format: :long) # => "Tom (4 years)"

# Also work:
tom.localize         # => "Tom"
tom.human_name       # => "Tom"
I18n.localize(tom)        # => "Tom"
I18n.localize(tom, :long) # => "Tom (4 years)"

tom.l(locale: :fr)                # => "Tom"
tom.l(locale: :fr, format: :long) # => "Tom, 4 ans"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
