class Trip < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "trips_users"
  has_and_belongs_to_many :airports, class_name: "Airport", join_table: "airports_trips"
end
