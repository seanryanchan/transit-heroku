class AddPasswordDigestToCommuters < ActiveRecord::Migration[5.2]
  def change
    add_column :commuters, :password_digest, :string
  end
end
