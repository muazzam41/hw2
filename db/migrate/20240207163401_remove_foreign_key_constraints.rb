class RemoveForeignKeyConstraints < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :characters, :actors
    remove_foreign_key :characters, :movies
  end
end
