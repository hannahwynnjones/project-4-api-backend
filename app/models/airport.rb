class Airport < ApplicationRecord
  has_many :trips
  has_many :legs
end
