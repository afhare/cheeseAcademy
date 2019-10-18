class Cheese < ApplicationRecord
    has_many :cheese_textures
    has_many :cheese_milks
    has_many :flavor_wheels
    has_many :textures, through: :cheese_textures
    has_many :milks, through: :cheese_milks
    has_many :flavors, through: :flavor_wheels
    validates :rind, inclusion: { in: %w(bloomy cloth washed waxed fresh/none)}
end
