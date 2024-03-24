class Election < ApplicationRecord
    # validates :available_seat, :limit => 8
    belongs_to :meeting
    belongs_to :user
    has_many :candidates, dependent: :destroy
    has_many :votes, through: :candidates
end
