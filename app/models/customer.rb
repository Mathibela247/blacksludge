class Customer < ApplicationRecord
    has_many :addresses
    has_many :events
    has_many :setting_attendee
    has_many :invitation_rsvps
    belongs_to :industry
    belongs_to :customer_type

    validates :mobile, phone: { possible: true, allow_blank: true }
    validates :landline, phone: { possible: true, allow_blank: true }

    def formatted_mobile
        phone = Phonelib.parse(mobile)
        formatted = phone.full_e164.presence || phone.full_national.presence
    end

    def formatted_landline
        phone = Phonelib.parse(landline)
        formatted = phone.full_e164.presence || phone.full_national.presence
    end
end
