# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Restaurant.destroy_all

10.times do
    User.create(name: Faker::Name.name, location: Faker::Address.street_address, email: Faker::Internet.email, password: 'password')
end

10.times do
    Restaurant.create(name: Faker::Restaurant.name, location: Faker::Address.street_address, price_range: Faker::Number.between(from: 1, to: 10),rating: Faker::Number.between(from: 1, to: 5))
end


    Tag.create(name: 'spicy' description: 'yellow' )
    Tag.create(name: 'healthy' description: 'yellow' )
    Tag.create(name: 'greasy' description: 'yellow' )
    Tag.create(name: 'meaty' description: 'yellow' )
    Tag.create(name: 'grab-n-go' description: 'yellow' )
    Tag.create(name: 'fancy 'description: 'yellow' )
    Tag.create(name: 'hearty' description: 'yellow' )
    Tag.create(name: 'sweet' description: 'yellow' )
    
