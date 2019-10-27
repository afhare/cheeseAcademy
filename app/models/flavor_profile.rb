class FlavorProfile < ApplicationRecord
  belongs_to :cheese
  belongs_to :flavor
  accepts_nested_attributes_for :cheese, :flavor
end
