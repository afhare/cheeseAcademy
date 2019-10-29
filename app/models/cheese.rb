class Cheese < ApplicationRecord
    has_many :flavor_profiles
    has_many :flavors, through: :flavor_profiles
    has_many :tastes, through: :flavors
    validates :rind, inclusion: { in: %w(bloomy cloth washed waxed fresh natural none)}
    validates :milk, inclusion: { in: %w(cow goat sheep buffalo raw nut-based soy other)}
    validates :texture, inclusion: { in: %w(runny soft semi-soft firm semi-firm hard)}
end
