class CreateTransitLines < ActiveRecord::Migration[5.2]
  def change
    create_table :transit_lines do |t|
      t.string :status
      t.string :operating_hours
      t.string :type
      t.string :restrictions
      t.integer :reliability
      t.string :name
      t.float :avg_price

      t.timestamps
    end
  end
end
