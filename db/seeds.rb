# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(
  username: "oofstar",
  team_name: "Firth Street Cutie Crew",
  password: "password",
)

Cutie.create(
  name: "Alox",
  cutie_pic: "http://oofindustries.net/images/aloxpic.jpg",
  bio: "Alox is a well known QTV personality and the mastermind behind the concept of Spoon Therapy.",
  cutie_type: "Softie",
  species: "Polar Bear",
  birthdate: 19851008,
  user_id: User.first.id
)
