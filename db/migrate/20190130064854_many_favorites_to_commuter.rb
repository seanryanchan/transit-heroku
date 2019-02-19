class ManyFavoritesToCommuter < ActiveRecord::Migration[5.2]
  def change
    add_reference :favorites, :commuter, index: true
  end
end
