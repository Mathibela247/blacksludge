class Package < ApplicationRecord
    has_many :customers
    serialize :features, Array
end
