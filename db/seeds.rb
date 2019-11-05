# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Diary.destroy_all 
Entry.destroy_all 
Comment.destroy_all
Routine.destroy_all 
Product.destroy_all 
RoutineProduct.destroy_all
List.destroy_all
User.destroy_all 
ActiveIngredient.destroy_all 
Brand.destroy_all 



User.create({display_name: "Polly", email_address: "polly.c.reynolds@gmail.com", password: "Fl0rence!"})
