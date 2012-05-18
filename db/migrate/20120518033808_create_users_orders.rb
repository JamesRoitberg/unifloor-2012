class CreateUsersOrders < ActiveRecord::Migration
  def change
    create_table :users_orders do |t|
      t.string :code
      t.references :costumer
      t.references :user
      t.string :price
      t.boolean :action

      t.timestamps
    end
    add_index :users_orders, :costumer_id
    add_index :users_orders, :user_id
  end
end
