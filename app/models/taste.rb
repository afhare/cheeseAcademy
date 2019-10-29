class Taste < ApplicationRecord
    has_many :flavor_taste_categories
    has_many :flavors, through: :flavor_taste_categories
end
