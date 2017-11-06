class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.string  :name_of_film
      t.integer  :user_id
      t.integer :year
      t.string :description
      t.timestamps
    end
  end
end
