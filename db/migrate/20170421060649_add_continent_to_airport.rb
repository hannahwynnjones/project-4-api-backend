class AddContinentToAirport < ActiveRecord::Migration[5.0]
  def change
    add_column :airports, :Continent, :string
  end
end
