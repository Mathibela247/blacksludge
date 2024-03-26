class Attendee < ApplicationRecord
    has_many :checkins
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true

    def self.search(params)
        params[:query].blank? ? all : where(
            "first_name LIKE ?", "%#{sanitize_sql_like(params[:query])}%"
        )
    end
end
