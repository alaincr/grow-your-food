# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#User.destroy_all
#Location.destroy_all
user = User.create!( email: "monsieur@home.com", password: "bbbbbbb")
user1 = User.create!( email: "madame@home.com", password: "aaaaaaa")
user2 = User.create!( email: "helene@home.com", password: "aaaaaaa")
Location.create!( address: "3 rue de la Joie", urban: true, city: "paris", description: "un endroit pomme", capacity: 2, user_id: user.id )
Location.create!( address: "4 rue de la Paix", urban: false, city: "lisbonne", description: "Création de container et substrat de compost local", capacity: 4, user_id: user1.id )
Location.create!( address: "31 flower path", urban: false, city: "Singapore", description: "Rooftop forest garden", capacity: 4, user_id: user2.id )
