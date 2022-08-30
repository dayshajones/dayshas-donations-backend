class DonationSerializer < ActiveModel::Serializer
  attributes :id, :brand, :department, :size, :title, :image_url, :available, :shipping_price, :admin_id
end
