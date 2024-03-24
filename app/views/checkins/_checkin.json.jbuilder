json.extract! checkin, :id, :user_id, :checked_in, :created_at, :updated_at
json.url checkin_url(checkin, format: :json)
