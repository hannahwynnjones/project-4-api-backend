class AddAirportToTrip < ActiveRecord::Migration[5.0]
  def change
    add_reference :trips, :airport, foreign_key: true
  end
end
