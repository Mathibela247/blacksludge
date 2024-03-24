json.extract! election, :id, :names, :meeting_id, :user_id, :created_at, :updated_at
json.url election_url(election, format: :json)
