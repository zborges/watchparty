class RemoveWatchlistFromVotes < ActiveRecord::Migration[7.2]
  def change
    remove_reference :votes, :watchlist, null: false, foreign_key: true
  end
end
