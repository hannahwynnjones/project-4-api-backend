class LegSerializer < ActiveModel::Serializer
  attributes :id, :start_date, :price, :airline, :airport_id
  has_one :airport
  belongs_to :trip
end
