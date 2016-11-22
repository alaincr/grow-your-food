# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Location.destroy_all
User.create!( email: "monsieur@home.com", password: "bbbbbbb")
User.create!( email: "madame@home.com", password: "aaaaaaa")
Location.create!( address: "3 rue de la Joie", urban: true, city: "paris", description: "un endroit pomme", capacity: 2 )
Location.create!( address: "4 rue de la Paix", urban: false, city: "lisbonne", description: "plus on est de fous, plus on bêche", capacity: 4 )
