class Vote < ApplicationRecord
    # Users can cast their vote within a watchlist
    # if a user casts a vote on a movie within a watchlist, how is the number of votes tracked?

    belongs_to :user
    belongs_to :watchlist
end
