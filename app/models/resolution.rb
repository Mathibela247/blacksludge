class Resolution < ApplicationRecord
    acts_as_votable 
    belongs_to :meeting
    belongs_to :user
end
