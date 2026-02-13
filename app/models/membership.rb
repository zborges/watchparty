class Membership < ApplicationRecord
    # Users subcribe to a 'group' using a membership

    belongs_to :user, index: true, foreign_key: true
    belongs_to :group
end
