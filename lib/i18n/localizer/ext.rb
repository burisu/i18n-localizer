module I18n::Backend::Simple

  def localize_with_localizer(locale, object, *args)
    I18n::Localizer.localize(locale, object, *args)
  rescue
    localize_without_localizer(locale, object, *args)
  end
  
  alias_method(:localize_without_localizer, :localize)
  alias_method(:localize, :localize_with_localizer)

end
