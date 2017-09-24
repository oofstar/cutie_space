User.create(
  username: "Oofstar",
  team_name: "Firth Street Cutie Crew",
  first_name: "Al",
  last_name: "Fair",
  email: "geek.sheek@gmail.com",
  password: "password"
)

user_1 = User.first

my_cuties = [

  [
    "Alex P Fair",
    Rails.root.join('public', 'images', 'alex.jpg' ).open,
    "Alex grew up in brooklyn and misses it terribly!",
    "Softie",
    "Polar Bear",
    19851007,
    user_1
  ]

]

my_cuties.each do |cutie_info|
  name, cutie_pic, bio, cutie_type, species, birthdate, user = cutie_info
  Cuty.create(
    name: name,
    cutie_pic: cutie_pic,
    bio: bio,
    cutie_type: cutie_type,
    species: species,
    birthdate: birthdate,
    user: user
  )
end
