class CreateSuggests < ActiveRecord::Migration[5.2]
  def change
    create_table :suggests do |t|
      t.string :name
      t.text :description
      t.integer :status
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
