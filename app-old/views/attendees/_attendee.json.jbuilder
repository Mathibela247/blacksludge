json.extract! attendee, :id, :first_name, :last_name, :email, :company, :mobile_number, :created_at, :updated_at
json.url attendee_url(attendee, format: :json)
