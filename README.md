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

    # Simple example
    I18n::Localizer(MyClass) do |object_to_localize, options|
      # Do localization stuff
      return localized_string
    end

    # If we prefer to use some parameter
    I18n::Localizer(Numeric, :unit) do |object, options|
      # Do localization stuff with options[:unit]
      return localized_string
    end

    I18n.localizers
    # Returns an array of localizers:
    # [{:class => Numeric, :required_options => [:unit]}, {:class => MyClass}]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
