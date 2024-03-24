json.extract! address, :id, :country, :state, :city, :address_line_1, :customer_id, :address_type, :created_at, :updated_at
json.url address_url(address, format: :json)
