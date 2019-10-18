class FlavorWheel < ApplicationRecord
  belongs_to :cheese
  belongs_to :flavor
  validates :level, numericality: {only_integer:true, greater_than_or_equal_to: 0, less_than_or_equal_to:5}
end
