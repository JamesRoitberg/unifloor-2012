class CreateStocks < ActiveRecord::Migration
  def change
    create_table :stocks do |t|
      t.string :code
      t.string :product
      t.string :status
      t.string :amount

      t.timestamps
    end
  end
end
