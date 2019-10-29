class FlavorTasteCategory < ApplicationRecord
  belongs_to :flavor
  belongs_to :taste
end
