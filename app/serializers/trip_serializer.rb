class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :attendees
  has_many :comments
  has_many :airports
  attributes :id, :name, :description, :image_src, :attendee_ids, :airport_ids, :date_one, :date_two, :date_three

  def image_src
      object.image.url
  end

end
