class RemoveTmdbIdFromWatchlists < ActiveRecord::Migration[7.2]
  def change
    remove_column :watchlists, :tmdb_id, :string
  end
end
