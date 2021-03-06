class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string  :first_name
      t.string  :last_name
      t.integer :age
      t.string  :email
      t.string  :address
      t.string  :country
      t.string  :sex
      t.integer :telephone
      t.timestamps
    end
  end
end
