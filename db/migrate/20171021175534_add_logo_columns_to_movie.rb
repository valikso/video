class AddLogoColumnsToMovie < ActiveRecord::Migration[5.1]
  def up
    add_attachment :movies, :logo
  end

  def down
    remove_attachment :movies, :logo
  end
end
