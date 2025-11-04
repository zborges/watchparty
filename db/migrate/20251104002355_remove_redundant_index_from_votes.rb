class RemoveRedundantIndexFromVotes < ActiveRecord::Migration[7.2]
  def change
    # Removes the single-column index that is covered by the composite index
    remove_index :votes, :user_id
  end
end
