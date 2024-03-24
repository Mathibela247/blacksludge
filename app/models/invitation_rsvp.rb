class InvitationRsvp < ApplicationRecord
    belongs_to :event
    belongs_to :customer
    belongs_to :dietary_restriction
    belongs_to :invitation_response
end
