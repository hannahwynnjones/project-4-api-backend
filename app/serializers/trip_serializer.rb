class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :attendees
  has_many :comments
  has_many :airports
  attributes :id, :name, :description, :attendee_ids, :airports, :date_one, :date_two, :date_three, :airport_ids
end
