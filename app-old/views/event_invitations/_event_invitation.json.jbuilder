json.extract! event_invitation, :id, :event_id, :user_id, :sent_date, :invitation_response_id, :text_response, :response_date, :created_at, :updated_at
json.url event_invitation_url(event_invitation, format: :json)
