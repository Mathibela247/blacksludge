class User < ApplicationRecord


  enum role: {admin: 0, host: 1, guest: 2}
  
  
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
    # state has to be valid when changing a country
    # validates :country, presence: true
    validates :state, inclusion: { in: ->(record) { record.states.keys }, allow_blank: true }
    validates :state, presence: { if: ->(record) { record.states.present? } }
  
    # some countries don't have any cities, like Vatican.
    # city has to be valid when changing a country/state
    validates :city, inclusion: { in: ->(record) { record.cities }, allow_blank: true }
    validates :city, presence: { if: ->(record) { record.cities.present? } }
     
   belongs_to :customer, optional: true
   belongs_to :role, optional: true
   
   has_many :events
   has_many :messages, dependent: :destroy
       
  def countries
    CS.countries.with_indifferent_access
  end
       
  def states
    CS.states(country).with_indifferent_access
  end
       
  def cities
    CS.cities(state, country) || []
  end     
  
  def country_name
    countries[country]
  end

  def state_name
    states[state]
  end
         
end
