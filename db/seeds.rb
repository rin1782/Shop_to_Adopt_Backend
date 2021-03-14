# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Pet.destroy_all
Inquiry.destroy_all

phoenix = Pet.create(name: "Phoenix", desc: "9 month old, house trained, loves kids, does not like car rides", image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2000&h=2000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F09%2F03%2Fbrown-puppy-sssxyuZape8-unsplash-2000.jpg")
luna = Pet.create(name: "Luna", desc: "10 month old playful girl, still house training, loves other dogs, crate trained", image_url: "https://www.petmd.com/sites/default/files/senior-golden-retriever-with-ball-picture-id488657289.jpg")

commentAvail = Inquiry.create(comment: "Is this pet still available to adopt?", pet_id: pet.id)
commentNotAvail = Inquiry.create(comment: "I am no longer interested", pet_id: pet.id)