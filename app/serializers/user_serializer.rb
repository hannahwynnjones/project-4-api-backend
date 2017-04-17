class UserSerializer < ActiveModel::Serializer
  has_many :trips_created
  has_many :trips_attending
  attributes :id, :username, :first_name, :second_name, :image_src, :email

  # def full_name
  #   "#{object.first_name} #{object.last_name}"
  # end

  def image_src
      object.image.url
  end

end
