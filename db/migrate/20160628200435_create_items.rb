class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :nome
      t.text :description
      t.date :release_date
      t.float :price
      t.string :img_url

      t.timestamps null: false
    end
  end
end
