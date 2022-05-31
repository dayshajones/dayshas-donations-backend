# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
    brand = Faker::Commerce.brand
    department = Faker::Commerce.department
    shipping = Faker::Commerce.price(range: 0..10.0, as_string: true)
    available = Faker::Boolean.boolean
    donation_id = Faker::Number.number(digits: 10)
    title = Faker::Commerce.product_name
    image =Faker::LoremFlickr.image(search_terms: ['clothing'])

    donations_seeds = Donation.new(
        brand: brand, 
        donation_id: donation_id, 
        department: department, 
        title: title, 
        image_url: image, 
        available: available, 
        shipping_price: shipping
    )
    donations_seeds.save
end