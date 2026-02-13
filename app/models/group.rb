class Group < ApplicationRecord
    # Represents the 'group' of users
    # Is linked to users via their respective membership
    # Groups have a watchlist of movies 

    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    has_many :memberships, dependent: :destroy
    has_many :members, through: :memberships, source: :user
    has_many :watchlists, dependent: :destroy
end
