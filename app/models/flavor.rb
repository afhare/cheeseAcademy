class Flavor < ApplicationRecord
    has_many :flavor_wheels
    has_many :cheeses, through: :flavor_wheels
end
