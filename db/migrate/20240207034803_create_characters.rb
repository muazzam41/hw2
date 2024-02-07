class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.integer :movie_id, null: false
      t.integer :actor_id, null: false
      t.string :character_name

      t.timestamps
    end
    add_foreign_key :characters, :movies
    add_foreign_key :characters, :actors
  end
end
