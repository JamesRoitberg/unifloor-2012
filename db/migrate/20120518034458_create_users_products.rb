class CreateUsersProducts < ActiveRecord::Migration
  def change
    create_table :users_products do |t|
      t.string :name
      t.references :category

      t.timestamps
    end
    add_index :users_products, :category_id
  end
end
