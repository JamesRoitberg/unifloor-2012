class CreateRepresentatives < ActiveRecord::Migration
  def change
    create_table :representatives do |t|
      t.string :cpf
      t.string :rg
      t.string :address
      t.string :cep
      t.string :city
      t.string :uf
      t.string :phone
      t.string :cellphone
      t.string :neighborhood
      t.references :user
      t.timestamps
    end
  end
end
