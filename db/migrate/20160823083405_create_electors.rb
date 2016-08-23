class CreateElectors < ActiveRecord::Migration
  def change
    create_table :electors do |t|
      t.string :name
      t.string :yomi
      t.string :town
      t.string :banchi
      t.boolean :kakunin, :default => 0      
      t.integer :kazoku_id
      t.string :postal_code
      t.string :bikou
      t.string :tel_sinai
      t.boolean :kouenkai, :default => 0      
      t.boolean :douki, :default => 0      
      t.integer :kitaichi, :default => 0      
      t.integer :syoukai_id
      t.boolean :tehai_1, :default => 0      
      t.boolean :tehai_2, :default => 0      
      t.boolean :tehai_3, :default => 0      

      t.timestamps null: false
    end
  end
end
