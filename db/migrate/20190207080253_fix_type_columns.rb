class FixTypeColumns < ActiveRecord::Migration[5.2]
  def change
    change_table :transit_stops do |t|
      t.remove "type"
      t.string "kind"
    end
    change_table :transit_lines do |t|
      t.remove "type"
      t.string "kind"
    end
  end
end
