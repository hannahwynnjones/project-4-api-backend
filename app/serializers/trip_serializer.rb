class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :attendees
  has_many :comments
  has_many :airports
  attributes :id, :name, :description, :attendee_ids, :airport_ids, :date_one, :date_two, :date_three
end

#don't need airports and airport ids???
