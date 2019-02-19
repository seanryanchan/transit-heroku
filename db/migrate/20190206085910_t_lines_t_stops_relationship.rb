class TLinesTStopsRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table "transit_lines_stops" do |t|
      t.integer "transit_line_id"
      t.integer "transit_stop_id"
      t.integer "stop_number"
    end
  end
end
