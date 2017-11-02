class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :movie_id
      t.string    :body
      t.references :movie, foreign_key: true
      t.timestamps
    end
  end
end
