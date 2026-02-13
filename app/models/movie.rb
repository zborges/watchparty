class Movie < ApplicationRecord
  belongs_to :watchlist

  validates :tmdb_id, presence: true, uniqueness: { scope: :watchlist_id }
end
