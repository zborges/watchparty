class Watchlist < ApplicationRecord
    # Watchlist will have movies
    # Movies will have votes, 

    belongs_to :group, foreign_key: :group_id
    has_many :votes, dependent: :destroy

end
