class CreateTransitStops < ActiveRecord::Migration[5.2]
  def change
    create_table :transit_stops do |t|
      t.string :name
      t.string :type
      t.string :status
      t.string :longitude
      t.string :latitude

      t.timestamps
    end
  end
end
