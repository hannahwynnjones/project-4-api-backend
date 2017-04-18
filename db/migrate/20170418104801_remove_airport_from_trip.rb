class RemoveAirportFromTrip < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :airport_one
    remove_column :trips, :airport_two
    remove_column :trips, :date_one
    remove_column :trips, :date_two
    remove_column :trips, :date_three
    add_column :trips, :start_date, :date
  end
end
