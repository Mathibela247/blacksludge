class Attendee < ApplicationRecord
    has_many :checkins

    def self.search(params)
        params[:query].blank? ? all : where(
            "first_name LIKE ?", "%#{sanitize_sql_like(params[:query])}%"
        )
    end
end
