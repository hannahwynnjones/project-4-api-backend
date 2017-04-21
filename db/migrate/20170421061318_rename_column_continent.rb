class RenameColumnContinent < ActiveRecord::Migration[5.0]
  def change
    rename_column :airports, :Continent, :continent
  end
end
