# I18n::Localizer

I think that all objects can be localized: Date, Time, DateTime but also Numeric, Money, Measure, Enumerize::Value...

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
# Simple example
  I18n.add_localizer(Cat) do |cat, options|
  return :name_with_age.t(name: cat.name, age: cat.age.l)
end

# If we prefer to use some parameter
I18n.add_localizer(Numeric, :unit) do |object, options|
  # Do localization stuff with options[:unit]
  return localized_string
end

tom = Cat.new("Tom", 4)
tom.l              # => Tom, 4 years
tom.localize       # => Tom, 4 years
tom.human_name     # => Tom, 4 years
I18n.localize(tom) # => Tom, 4 years
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
