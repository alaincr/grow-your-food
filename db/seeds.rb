# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Location.new( address: "3 rue de la Joie", urban:true, city: "paris", description: "un endroit pomme")
Location.new( urban:true, address: "4 rue de la Paix", city: "lisbonne", description: "plus on est de fous, plus on bêche")
Location.new(address: "place de la folie", urban:false, city: "london", description: "on se croirait à la campagne, et on y est")