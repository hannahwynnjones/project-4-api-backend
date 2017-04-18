class Leg < ApplicationRecord
  belongs_to :airport
  belongs_to :trip
end
