class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :address
      t.string :cep
      t.string :city
      t.string :uf
      t.string :phone
      t.string :neighborhood
      t.timestamps
    end
  end
end
