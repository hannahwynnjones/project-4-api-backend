class RemoveTripFromAirport < ActiveRecord::Migration[5.0]
  def change
    remove_column :airports, :trip_id
    remove_column :airports, :DestinationId
  end
end
