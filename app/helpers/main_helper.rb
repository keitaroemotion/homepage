module MainHelper
  def switch_lang
    I18n.locale.to_s == "en" ? "ja" : "en"
  end

  def label_reverse
    I18n.locale == :en ? "日本語" : "English"
  end
end
