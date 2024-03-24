class Candidate < ApplicationRecord
  acts_as_votable 
  belongs_to :election
  has_many :votes
end
