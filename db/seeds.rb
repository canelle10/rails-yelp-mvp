puts "Cleaning database..."
Restaurant.destroy_all

puts "Create 5 restaurants..."
5.times do
  restaurant = Restaurant.create(
  name: Faker::Restaurant.name,
  address: Faker::Address.street_name,
  category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
  phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant #{restaurant.id} created"
end

puts "Finished!"
