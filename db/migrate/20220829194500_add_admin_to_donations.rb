class AddAdminToDonations < ActiveRecord::Migration[6.1]
  def change
    add_reference :donations, :admin, null: false, foreign_key: true
  end
end
