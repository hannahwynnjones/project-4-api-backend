class AirportSerializer < ActiveModel::Serializer
  attributes :id, :name, :code, :country, :lat, :lng, :image
  has_many :trips
end
