# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



phoenix = Pet.create(name: "Phoenix", desc: "9 month old, house trained, loves kids, does not like car rides")
luna = Pet.create(name: "Luna", desc: "10 month old playful girl, still house training, loves other dogs, crate trained")
benny = Pet.create(name: "benny", desc: "3 year old shy boy, good around other dogs but not cats")


Inquiry.create(comment: "Is this pet still available to adopt?", saves: 4, pet_id: phoenix.id)
Inquiry.create(comment: "I am no longer interested", saves: 4, pet_id: phoenix.id)