class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :author
      t.string :country
      t.integer :year
      t.timestamps
    end
  end
end
