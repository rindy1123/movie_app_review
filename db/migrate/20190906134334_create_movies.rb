class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :genre
      t.text :description
      t.string :app
      t.float :review_score, default: 0
      t.string :movie_type

      t.timestamps
    end
  end
end
