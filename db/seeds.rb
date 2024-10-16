# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

if I18n.locale.to_s == ':pt-BR'
    AnimalType.create([
        {name: "Cachorro", icon:"dog"},
        {name: "Gato", icon:"cat"}
    ])
else
    AnimalType.create([
        {name: "Dog", icon:"dog"},
        {name: "Cat", icon:"cat"}
    ])
end

SocialType.create!([
    {name: "Instagram", icon: "instagram"},
    {name: "Facebook", icon: "facebook"},
    {name: "Twitter",icon: "twitter"},
    {name: "Tiktok", icon: "tiktok"},
    {name: "Bluesky", icon: "bluesky"},
    {name: "Threads",icon: "threads"}
])

Social.create!([
    {social_type_id: 1,user:'test'},
    {social_type_id: 2,user: 'test',url: 'http://[::1]:3000'}
])

