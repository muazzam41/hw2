class CreateStudios < ActiveRecord::Migration[7.1]
  def change
    create_table :studios do |t|
      t.string "name"
      t.integer "studio_id" #foreign key
      t.timestamps
    end
  end
end
