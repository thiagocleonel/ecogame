class Donation < ApplicationRecord
  belongs_to :citizen
  belongs_to :ecopoint
  belongs_to :material
end
