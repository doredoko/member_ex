class CreateElectors < ActiveRecord::Migration
  def change
    create_table :electors do |t|
      t.string :name
      t.string :yomi
      t.string :town
      t.string :banchi
      t.boolean :kakunin
      t.integer :kazoku_id
      t.string :postal_code
      t.string :bikou
      t.string :tel_sinai
      t.boolean :kouenkai
      t.boolean :douki
      t.integer :kitaichi
      t.integer :syoukai_id
      t.boolean :tehai_1
      t.boolean :tehai_2
      t.boolean :tehai_3

      t.timestamps null: false
    end
  end
end
