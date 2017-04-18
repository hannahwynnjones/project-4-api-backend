class TripSerializer < ActiveModel::Serializer
  belongs_to :user
  has_many :attendees
  has_many :comments
  belongs_to :airport
  has_many :legs
  attributes :id, :name, :description, :user_id, :airport_id, :image_src, :attendee_ids, :start_date

  def image_src
    object.image.url
  end

end
