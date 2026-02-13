class RemoveScoreFromVotes < ActiveRecord::Migration[7.2]
  def change
    remove_column :votes, :score, :integer
  end
end
