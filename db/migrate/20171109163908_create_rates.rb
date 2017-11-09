class CreateRates < ActiveRecord::Migration[5.1]
  def change
    create_table :rates do |t|
        t.integer :movie_id
        t.integer :user_id
      t.timestamps
    end
    add_index(:rates, [:movie_id, :user_id], unique: true)
  end
end
