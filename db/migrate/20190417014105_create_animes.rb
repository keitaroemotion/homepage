class CreateAnimes < ActiveRecord::Migration
  def change
    create_table :animes do |t|

      t.timestamps null: false
    end
  end
end
