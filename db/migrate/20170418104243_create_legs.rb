class CreateLegs < ActiveRecord::Migration[5.0]
  def change
    create_table :legs do |t|
      t.references :airport, foreign_key: true
      t.date :start_date
      t.integer :price
      t.string :airline

      t.timestamps
    end
  end
end
