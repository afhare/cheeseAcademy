class Milk < ApplicationRecord
    has_many :cheese_milks
    has_many :cheeses, through: :cheese_milks
end
