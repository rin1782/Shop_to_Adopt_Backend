# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

comment = Inquiry.create(comment: "Is this pet still available to adopt?", pet_id: pet_id)

Pet.create(name: "Phoenix", desc: "9 month old, house trained, loves kids, does not like car rides", image_url: "https://imagesvc.meredithcorp.io/v3/mm/image?q=85&c=sc&poi=face&w=2000&h=2000&url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F47%2F2020%2F09%2F03%2Fbrown-puppy-sssxyuZape8-unsplash-2000.jpg")