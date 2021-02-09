# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'destroy the users!'
User.destroy_all
puts 'get rid of the bios!'
Bio.destroy_all
puts 'say bye bye to all the pictures'
Picture.destroy_all
puts 'no more profiles'
Profile.destroy_all



users = [
    {
        name: "brian",
        username: "scratchytube",
        password: "12345"
    },
    {
        name: "mario",
        username: "tazaryoot",
        password: "chumean"
    }
]

puts 'sure ill make some users'
users.each do |user_hash|
    User.create!(user_hash)
end



bios = [
    {
        typeOfPrompt: "funny",
         snippets:  Faker::Quote.most_interesting_man_in_the_world
            },
        {
        typeOfPrompt: "serious",
         snippets: Faker::Quotes::Shakespeare.romeo_and_juliet_quote
            
            },
        {
        typeOfPrompt: "poetic",
         snippets: Faker::Music::Prince.lyric
            }
    ]

    puts 'bios? why not'
    bios.each do |bio_hash|
        Bio.create!(bio_hash)
    end


    # pictures = [
    #     {
    #         tempates: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports', 'fitness']),
    #         completed_pictures: Faker::LoremPixel.image
    #     }
    # ]

    4.times do
        Picture.create(templates: Faker::LoremFlickr.image(size: "50x60", search_terms: ['sports', 'fitness']), completed_pictures: Faker::LoremPixel.image)
    end

    
    
    # profiles = [
    #     user_id: User.all.sample.id,
    #     bio_id: Bio.all.sample.id,
    #     picture_id: Picture.all.sample.id
    # ]

    2.times do 
        Profile.create!(user_id: User.all.sample.id, bio_id: Bio.all.sample.id, picture_id: Picture.all.sample.id)
    end