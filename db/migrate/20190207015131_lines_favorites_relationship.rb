class LinesFavoritesRelationship < ActiveRecord::Migration[5.2]
  def change
    create_table "favorites_transit_lines" do |t|
      t.integer "transit_line_id"
      t.integer "favorite_id"
    end
  end
end
