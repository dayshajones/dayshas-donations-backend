# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Donation.create! ([{admin_id: "1", brand: 'American Eagle', department: 'Tops', title: 'Striped Shirt', image_url: "https://s7d2.scene7.com/is/image/aeo/0355_4135_400_f?$pdp-mdg-opt$&fmt=webp", size: "large", available: "true", shipping_price: '5.00'},
{admin_id: "1", brand: 'Hot Topic', department: 'Tops', title: 'Band Tee', image_url: "https://cdn.media.amplience.net/s/hottopic/16876327_hi?$productMainDesktop$", available: "true", size: "medium", shipping_price: '3.00'},
{admin_id: "1", brand: 'Asos', department: 'Bottoms', title: 'Leopard Skirt', image_url: "https://cdn11.bigcommerce.com/s-233ct/images/stencil/759x1000/products/133/2232/NAOMI_WildThings_web_9_grey__34622__77171.1652670333.jpg?c=2", available: "false", size: "small", shipping_price: '7.00'}])