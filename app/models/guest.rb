class Guest < ApplicationRecord
    # before_create :set_update_token
    belongs_to :event, optional: true
    after_update :create_attendee

    def fullname
        "#{first_name.capitalize} #{last_name.capitalize}"  
    end

    validates :email, presence: true, uniqueness: true

    private
        def create_attendee
            Attendee.create(
            id: id,    
            first_name: first_name,
            last_name: last_name,
            email: email,
            mobile_number: mobile_number,
            customer_id: customer_id,
            event_id: event_id,
            dietary_restriction: dietary_restriction,
            accomodation: accomodation,
            created_at: created_at, 
            updated_at: updated_at, 
            )
        end
    # def set_update_token
    #     self.update_token = 
    #     SecureRandom.hex(10) if
    #     self.update_token.nil?
    # end
end
