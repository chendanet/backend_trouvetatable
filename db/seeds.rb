require 'faker'

User.destroy_all

5.times do
    User.create(
        first_name:Faker::Name.first_name,
        last_name:Faker::Name.last_name,  
        email:Faker::Internet.email, 
        password:"password",
        is_manager:"true"
    )
end

User.all.each do |user|
   7.times do
        Venue.create(
    user_id:user.id,
    name: Faker::Food.dish,
    address: Faker::Address.street_address,
    city: "Paris",
    zipcode: rand(75001..75020),
    price: rand(12..150),
    cuisine: ["Steak","Seafood","French","Asian","Indian","Italian","American","Mexican","Californian","Korean"].sample,
    category: "Restaurant",
    seatnumber:rand(15..70),
    phone_number: Faker::PhoneNumber.phone_number,
    photo: "https://source.unsplash.com/640x427/?dish",
    lat: Faker::Address.latitude,
    lng:Faker::Address.longitude, 
    description: Faker::Food.description
        )
    end
end

puts "seed ended"

