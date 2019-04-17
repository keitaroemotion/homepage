class AnimesController < ApplicationController

  def index
    I18n.locale = lang if lang

    @animes = Dir["app/assets/images/animes/*"].map { |dir|
      seq_and_gif(dir)
    }
  end

  def expand(dir)
    Dir["#{dir}/*"]
  end

  def lang
    super
  end

  private

  def seq_and_gif(dir)
    zip = File.join(zip_dir, File.basename(dir) +".zip").gsub("public/", "")
    gif = expand(File.join(dir, "gif")).first.gsub("app/assets/images/", "")
    [zip, gif]
  end

  def zip_dir
    "public/animes"
  end
end
