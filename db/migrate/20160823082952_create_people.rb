class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name 
      t.string :postal_code
      t.string :city
      t.string :town
      t.string :banchi
      t.string :tel_sigai, :default => '0855'
      t.string :tel_sinai
      t.string :keitai
      t.string :bikou
      t.float :latitude
      t.float :longtude
      t.boolean :gmaps, :default => 0
      t.boolean :douki, :default => 0
      t.boolean :genki, :default => 0
      t.boolean :kouenkai, :default => 0
      t.float :kihukin, :default => 0
      t.integer :syoukai_id
      t.integer :level, :default => 0

      t.timestamps null: false
    end
  end
end
