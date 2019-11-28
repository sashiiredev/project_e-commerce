# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
images = [
  "kit.jpg",
  "kit3.webp",
  "kit4.png",
  "kit5.jpg",
  "kit6.jpg",
  "kit1.jpg",
  "kit8.jpeg",
  "kit9.jpeg",
  "kti10.jpeg",
  "kit11.png"
]
i = 0;
10.times do
  Item.create(
    title: Faker::Address.street_address,
    price: rand(10..500),
    description: Faker::Address.full_address,
    image_url: images[i]
  )
  i += 1
#  i = Image.new(item_id: i.id, description: 'Super appart', url: 'https://s-ec.bstatic.com/images/hotel/max1024x768/716/71622578.jpg')
#  p.save
#  puts "Property n° #{p.id} created"
end
