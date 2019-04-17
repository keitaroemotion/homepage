class MainController < ApplicationController
  def index
    I18n.locale = lang if lang
  end

  def lang
    super
  end
end
