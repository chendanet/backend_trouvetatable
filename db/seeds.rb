require 'faker'

User.destroy_all

10.times do
    User.create(
        email:Faker::Internet.email, 
        password:"password"
    )
end

puts "seed ended"