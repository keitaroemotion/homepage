class MainController < ApplicationController
  def index
    I18n.locale = lang if lang
  end

  private

  def lang
    params["lang"]
  end
end
