json.extract! setting_attendee, :id, :customer_id, :bgcolor, :bgimage, :h1size, :logo, :fontsize, :created_at, :updated_at
json.url setting_attendee_url(setting_attendee, format: :json)
