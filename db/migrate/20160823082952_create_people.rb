class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :postal_code
      t.string :city
      t.string :town
      t.string :banchi
      t.string :tel_sigai
      t.string :tel_sinai
      t.string :keitai
      t.string :bikou
      t.float :latitude
      t.float :longtude
      t.boolean :gmaps
      t.boolean :douki
      t.boolean :genki
      t.boolean :kouenkai
      t.float :kihukin
      t.integer :syoukai_id
      t.integer :level

      t.timestamps null: false
    end
  end
end
