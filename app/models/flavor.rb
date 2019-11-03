class Flavor < ApplicationRecord
    has_many :flavor_profiles
    has_many :cheeses, through: :flavor_profiles
    has_many :flavor_taste_categories
    has_many :tastes, through: :flavor_taste_categories
end
