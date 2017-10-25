class AddVotesToMovie < ActiveRecord::Migration[5.1]
  def change
  		add_column :movies, :votes_count, :integer, default: 0
  end
end
