class CreateMovies < ActiveRecord::Migration[7.2]
  def change
    create_table :movies do |t|
      t.references :watchlist, null: false, foreign_key: true, type: :bigint
      t.bigint :tmdb_id, null: false
      t.jsonb :metadata, default: {}, null: false
      t.timestamps
    end

    add_index :movies, [ :watchlist_id, :tmdb_id ], unique: true, name: "index_movies_on_watchlist_and_tmdb"
  end
end
