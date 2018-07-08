# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(name: "Marcelo Arias", email: "contacto@parents.cl", password: "123456");
# User.create(name: "Erlich Bachman", email: "Backman@aviato.com", password: "123456");

# Idea.create(name: "Aviato", short_description: "", long_description: "", picture: "", user_id: 6);

5.times do |i|
  User.create(
    name: Faker::SiliconValley.character,
    email: Faker::Internet.email,
    password: 123456
  )
  Idea.create(
    name: Faker::SiliconValley.company,
    short_description: Faker::SiliconValley.motto,
    long_description: Faker::SiliconValley.quote,
    picture: Faker::Company.logo,
    user_id: i+4
  )
end
