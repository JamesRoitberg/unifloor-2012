class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
    	t.string :name, :limit => 80
    	t.string :mail 
    	t.string :subj
    	t.string :message 
      t.timestamps
    end
  end
end
