class CreateDepartureTimes < ActiveRecord::Migration[5.2]
  def change
    create_table :departure_times do |t|
      t.integer "transit_lines_transit_stops_id"
      t.string "departure_time"
      t.timestamps
    end
  end
end
