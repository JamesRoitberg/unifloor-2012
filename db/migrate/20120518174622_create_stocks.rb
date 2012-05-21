class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :code
      t.references :product
      t.string :status
      t.string :amount

      t.timestamps
    end
    add_index :stocks, :product_id
  end
end
