class AddDateOneAndDateTwoAndDateThreeToTrip < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :date_one, :date
    add_column :trips, :date_two, :date
    add_column :trips, :date_three, :date
  end
end
