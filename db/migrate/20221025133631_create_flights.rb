class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.date :start_datetime
      t.integer :duration

      t.references :departure_airport, null: false, foreign_key: { to_table: :airports }, index: true
      t.references :arrival_airport, null: false, foreign_key: { to_table: :airports }, index: true
      t.timestamps
    end
  end
end
