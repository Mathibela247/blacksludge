json.extract! event, :id, :event_name, :event_url, :event_type, :location_name, :location_address, :start_time, :end_time, :created_at, :updated_at, :customer_id, :user_id
json.url event_url(event, format: :json)
