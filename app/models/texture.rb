class Texture < ApplicationRecord
    has_many :cheese_textures
    has_many :cheeses, through: :cheese_textures
end
