module I18n::Backend::Simple

  def localize_with_localizer(locale, object, format = :default, options = {})
    I18n::Localizer.localize(locale, object, format, options)
  rescue
    localize_without_localizer(locale, object, format, options)
  end
  
  alias_method(:localize_without_localizer, :localize)
  alias_method(:localize, :localize_with_localizer)

end
