# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CAT = ["chinese", "italian", "japanese", "french", "belgian"]
RAT = [0,1,2,3,4,5]
ID = [0,1,2,3,4,5,6,7,8,9]
10.times { Restaurant.create({name: "Chez #{Faker::GameOfThrones.character}", address: "#{Faker::Address.street_address}, #{Faker::Address.country}", phone_number: Faker::PhoneNumber.cell_phone, category: CAT.sample }) }

30.times { Review.create({ content: "I loved their #{Faker::Food.ingredient}.", rating: RAT.sample, restaurant_id: ID.sample }) }
