class DonationSerializer < ActiveModel::Serializer
  attributes :id, :brand, :donation_id, :department, :title, :image_url, :available, :shipping_price
end
