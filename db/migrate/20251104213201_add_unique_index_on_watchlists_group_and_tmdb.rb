class AddUniqueIndexOnWatchlistsGroupAndTmdb < ActiveRecord::Migration[7.2]
  def change
    add_index :watchlists, [:group_id, :tmdb_id], unique: true
  end
end
