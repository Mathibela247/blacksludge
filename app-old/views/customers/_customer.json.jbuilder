json.extract! customer, :id, :name, :email, :landline, :mobile, :industry_id, :company_registration, :vat_number, :purpose_of_application, :main_contact, :person_responsible_for_payment, :platform_requirements, :created_at, :updated_at
json.url customer_url(customer, format: :json)
