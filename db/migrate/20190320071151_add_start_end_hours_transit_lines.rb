class AddStartEndHoursTransitLines < ActiveRecord::Migration[5.2]
  def change
    change_table :transit_lines do |t|
      t.string "start_time"
      t.string "close_time"
    end
  end
end
