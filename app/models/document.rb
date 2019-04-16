class Document < ActiveRecord::Base
  CATEGORY_CRYPTO = "crypto"
  CATEGORIES = [CATEGORY_CRYPTO]

  def _title
    return "None" if title == "" || !title
    title
  end
end
