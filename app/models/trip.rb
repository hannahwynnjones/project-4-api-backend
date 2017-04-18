class Trip < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :legs
  belongs_to :airport
  mount_uploader :image, ImageUploader
  has_and_belongs_to_many :attendees, class_name: "User", join_table: "trips_users"
end
