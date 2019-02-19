class FixGpsAttributes < ActiveRecord::Migration[5.2]
  def change
    change_table :transit_stops do |t|
      t.remove "latitude"
      t.float "latitude"
      t.remove "longitude"
      t.float "longitude"
    end
  end
end
