class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :category
      t.string :name
      t.string :brand_name
      t.string :colour
      t.string :image
      t.float :price
      t.string :size
      t.text :description

      t.timestamps
    end
  end
end
