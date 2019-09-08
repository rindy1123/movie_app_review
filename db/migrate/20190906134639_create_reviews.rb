class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :movie, foreign_key: true
      t.string :name
      t.text :content
      t.float :score

      t.timestamps
    end
  end
end
