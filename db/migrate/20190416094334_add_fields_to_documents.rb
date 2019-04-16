class AddFieldsToDocuments < ActiveRecord::Migration
  def change
    add_column :documents, :title, :string
    add_column :documents, :category, :string
    add_column :documents, :content, :string
  end
end
