json.extract! invitation_rsvp, :id, :event_id, :invitation_response_id, :user_id, :customer_id, :dietary_restriction_id, :created_at, :updated_at
json.url invitation_rsvp_url(invitation_rsvp, format: :json)
