class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.datetime :date_order
      t.integer :status
      t.integer :user_id

      t.timestamps
    end
  end
end
