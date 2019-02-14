class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.integer :quantity
      t.text :description
      t.string :picture
      t.integer :category_id

      t.timestamps
    end
  end
end