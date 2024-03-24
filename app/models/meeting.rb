class Meeting < ApplicationRecord
    has_many :resolutions
    has_many :agendas
    has_many :elections
    has_many :candidates, through: :elections
end
