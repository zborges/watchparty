class User < ApplicationRecord
    # Membership is the join table between users and groups, allowing users to subscribe to groups.
    
    has_many :memberships
    has_many :groups, through: :memberships
    has_many :votes

end
