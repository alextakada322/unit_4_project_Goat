class CreateShoes < ActiveRecord::Migration[6.1]
  def change
    create_table :shoes do |t|
      t.string :name
      t.text :description
      t.date :release_date
      t.string :sku
      t.string :brand
      t.string :colorway
      t.string :silhouette
      t.string :category

      t.timestamps
    end
  end
end
