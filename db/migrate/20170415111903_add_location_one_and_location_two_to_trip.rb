class AddLocationOneAndLocationTwoToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :location_one, :string
    add_column :trips, :location_two, :string
  end
end
