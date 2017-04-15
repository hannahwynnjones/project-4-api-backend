class ChangeColumnNameTwo < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :location_two, :airport_two
  end
end
