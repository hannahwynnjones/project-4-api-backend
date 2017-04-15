class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :location_one, :airport_one
  end
end
