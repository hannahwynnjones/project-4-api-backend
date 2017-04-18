class AddDestinationIdToAirport < ActiveRecord::Migration[5.0]
  def change
    add_column :airports, :DestinationId, :integer
  end
end
