class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :code
      t.references :customer
      t.references :user
      t.string :price
      t.boolean :action

      t.timestamps
    end
    add_index :orders, :customer_id
    add_index :orders, :user_id
  end
end
