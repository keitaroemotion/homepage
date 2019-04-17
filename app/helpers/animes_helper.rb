module AnimesHelper
  def real_name(gif)
    File
      .basename(gif)
      .gsub(".gif", "")
      .gsub("_", " ")
  end
end
