class Airport < ApplicationRecord
  has_and_belongs_to_many :trips, class_name: "Trip", join_table: "airports_trips"
end
