require "i18n/localizer/version"
require "i18n/localizer/ext"

module I18n
  module Localizer

    def add_localizer(klass, *keys, &block)
      raise NotImplementedError
    end

  end
end


I18n.send :extend, I18n::Localizer
