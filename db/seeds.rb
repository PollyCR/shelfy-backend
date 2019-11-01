# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create({display_name: "Polly", email_address: "polly.c.reynolds@gmail.com", password: "Fl0rence!"})
brands = Brand.create([{name: "Glossier"}, {name:"Drunk Elephant"}, {name:"Sunday Riley"}, {name: "REN"}, {name: "Charlotte Tilbury"}, {name: "The Ordinary"}])
Product.create([{name:"Futuredew", brand_id:1}])