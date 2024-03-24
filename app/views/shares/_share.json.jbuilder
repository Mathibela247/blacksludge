json.extract! share, :id, :account_number, :title, :name, :surname, :id_number, :email, :physical_address, :type_of_shares_id, :share_volume, :custom, :notes, :created_at, :updated_at
json.url share_url(share, format: :json)
