class CreateDonations < ActiveRecord::Migration[6.1]
  def change
    create_table :donations do |t|
      t.string :brand
      t.string :donation_id
      t.string :department
      t.string :title
      t.string :image_url
      t.boolean :available
      t.string :shipping_price
      t.timestamps
    end
  end
end
