module MainHelper
  def slideshow
    [
      "/slideshow/1.jpg",
      "/slideshow/2.jpg",
      "/slideshow/3.jpg",
      "/slideshow/4.jpg",
      "/slideshow/5.jpg",
    ]
  end
 
  def switch_lang
    I18n.locale.to_s == "en" ? "ja" : "en"
  end

  def label_reverse
    I18n.locale == :en ? "日本語" : "English"
  end
end
