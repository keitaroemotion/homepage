module DocumentsHelper
  def jslibs
    [
      "#{ajax}/libs/jquery/1.11.0/jquery.min.js",
      "#{ajax}/libs/codemirror/5.25.0/codemirror.min.js",
      "#{ajax}/libs/codemirror/5.25.0/mode/xml/xml.min.js",
      "https://cdn.jsdelivr.net/npm/froala-editor@2.9.1/js/froala_editor.pkgd.min.js",
      "https://cdn.jsdelivr.net/npm/froala-editor@2.9.1/js/plugins/image.min.js",
    ]
  end

  def ajax
    "https://cdnjs.cloudflare.com/ajax"
  end

  def min_css
    "#{ajax}/libs/font-awesome/4.4.0/css/font-awesome.min.css"
  end

  def min_css_2
    "#{ajax}/libs/codemirror/5.25.0/codemirror.min.css"
  end

  def min_css_3
    "https://cdn.jsdelivr.net/npm/froala-editor@2.9.1/css/froala_editor.pkgd.min.css"
  end

  def min_css_4
    "https://cdn.jsdelivr.net/npm/froala-editor@2.9.1/css/froala_style.min.css"
  end
end
