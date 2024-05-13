class Attendee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
    has_many :checkins
    validates :first_name, :last_name, :email, presence: true
    validates :email, uniqueness: true
    belongs_to :guest, optional: true
   

    def self.search(params)
        params[:query].blank? ? all : where(
            "first_name LIKE ?", "%#{sanitize_sql_like(params[:query])}%"
        )
    end
end
