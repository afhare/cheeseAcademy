class Cheese < ApplicationRecord
    has_many :flavor_profiles
    has_many :flavors, through: :flavor_profiles
    has_many :tastes, through: :flavors
    validates :rind, inclusion: { in: %w(bloomy cloth washed waxed fresh natural none)}
    validates :milk, inclusion: { in: %w(cow goat sheep buffalo raw nut-based soy other)}
    validates :texture, inclusion: { in: %w(runny soft semi-soft firm semi-firm hard)}

    def taste_profile_count
        taste_hash = {}
        self.tastes.map do |taste|
            if taste_hash[taste.name]
                taste_hash[taste.name] += 1
            else
                taste_hash[taste.name] = 1
            end
        end
        return taste_hash
    end
end
