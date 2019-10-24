class Flavor < ApplicationRecord
    has_many :flavor_profiles
    has_many :cheeses, through: :flavor_profiles
end
