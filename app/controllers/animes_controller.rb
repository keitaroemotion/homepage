class AnimesController < ApplicationController
  def index
    I18n.locale = lang if lang

    sequence_dir = "sequences"
    gif_dir      = "gif"

    @animes = Dir["app/assets/images/animes/*"].map { |dir|
      sequences = expand(File.join(dir, sequence_dir))
      gif       = expand(File.join(dir, gif_dir)).first.gsub("app/assets/images/", "")
      [sequences, gif]
    }
  end

  def expand(dir)
    Dir["#{dir}/*"]
  end

  def lang
    super
  end
end
