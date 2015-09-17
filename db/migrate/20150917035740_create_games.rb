class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name, null: false, unique: true
      t.integer :initiator_id
      t.integer :challenger_id
      t.text :record

      t.timestamps null: false
    end
  end
end
