class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string "title"
      t.string "rated"
      t.integer "movie_id" #foreign key
      t.integer "year_released"
      t.integer "studio_id"
      t.timestamps
    end
  end
end
