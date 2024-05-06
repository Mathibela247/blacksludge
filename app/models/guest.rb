class Guest < ApplicationRecord
    # before_create :set_update_token
    belongs_to :event, optional: true

    def fullname
        "#{first_name.capitalize} #{last_name.capitalize}"  
    end

    validates :email, presence: true

    # private
    # def set_update_token
    #     self.update_token = 
    #     SecureRandom.hex(10) if
    #     self.update_token.nil?
    # end
end
