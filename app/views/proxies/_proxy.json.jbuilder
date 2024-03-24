json.extract! proxy, :id, :firstname, :lastname, :member_number, :proxy_type_id, :proxy_firstname, :proxy_lastname, :proxy_member_number, :proxy_instruction_id, :created_at, :updated_at
json.url proxy_url(proxy, format: :json)
