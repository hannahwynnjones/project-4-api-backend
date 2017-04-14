class CreateAirports < ActiveRecord::Migration[5.0]
  def change
    create_table :airports do |t|
      t.string :name
      t.string :code
      t.string :country
      t.float :lat
      t.float :lng
      t.string :image
      t.references :trip, foreign_key: true

      t.timestamps
    end
  end
end
