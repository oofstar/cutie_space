my_users = [
  [
    'Oofstar',
    'Firth Street Cutie Crew',
    'Al',
    'Fair',
    'geek.sheek@gmail.com',
    'password'
  ],

  [
    'pants_mcgee',
    Faker::Space.agency,
    Faker::Name.first_name,
    Faker::Name.last_name,
    Faker::Internet.email,
    "password"
  ],

  [
    'maury_povich',
    Faker::Space.agency,
    Faker::Name.first_name,
    Faker::Name.last_name,
    Faker::Internet.email,
    "password"
  ],

  [
    'grandma_mullen',
    Faker::Space.agency,
    Faker::Name.first_name,
    Faker::Name.last_name,
    Faker::Internet.email,
    "password"
  ],
]

my_users.each do |user_info|
  username, team_name, first_name, last_name, email, password = user_info
  User.create(
    username: username,
    team_name: team_name,
    first_name: first_name,
    last_name: last_name,
    email: email,
    password: password
  )
end

my_cuties = [

  [
    "Alex P Fair",
    Rails.root.join('public', 'images', 'alex.jpg' ).open,
    "Alex grew up in brooklyn and misses it terribly!",
    "Softie",
    "Polar Bear",
    19850228,
    User.find_by(username: "Oofstar")
  ],

  [
    "Alox P Fair",
    Rails.root.join('public', 'images', 'alox.jpg' ).open,
    "Alox is a well known QTV personality and the mastermind behind the concept of Spoon Therapy.",
    "Softie",
    "Polar Bear",
    19851007,
    User.find_by(username: "Oofstar")
  ],

  [
    "Manatee Manatee",
    Rails.root.join('public', 'images', 'manny.jpg' ).open,
    "Manny is passionate about social justice, clean water, and hugs.",
    "Softie",
    "Manatee",
    nil,
    User.find_by(username: "Oofstar")
  ],

  [
    "Small Timer",
    Rails.root.join('public', 'images', 'small-timer.jpg' ).open,
    "Small Timer works down in the tiny office right by the exit. He keeps long hours, does a great job, and gets zero glory or reward. You know what that means... You got that right... PARTY TIME! Please join Small Timer on his fantastic adventure as he expresses his wild side and devours the wonders life has to offer. Wonders such as dry toast, no butter",
    "Softie",
    "UglyDoll",
    nil,
    User.find_by(username: "Oofstar")
  ],

  [
    "Anthony",
    Rails.root.join('public', 'images', 'anthony.jpg' ).open,
    "Anthony loves rock and roll and fire!",
    "Softie",
    "Dragon",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Herbie Hippo",
    Rails.root.join('public', 'images', 'herbie.jpg' ).open,
    "Herbert J Hippopotamus thinks the world is a beautiful place.",
    "Softie",
    "Hippo",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Pumpkin",
    Rails.root.join('public', 'images', 'pumpkin.jpg' ).open,
    "Pumpkin likes to travel and feel the wind on her face.",
    "Softie",
    "Pound Puppy",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Smoochie",
    Rails.root.join('public', 'images', 'smoochie.jpg' ).open,
    "Smoochie likes vegan baking and can't get enough of snacks.",
    "Softie",
    "Pound Puppy",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Snorlax",
    Rails.root.join('public', 'images', 'snorlax.jpg' ).open,
    "Snorlax loves hardcore music, moshing, snacks and naps!",
    "Softie",
    "Pocket Monster",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Hester Golem",
    Rails.root.join('public', 'images', 'hester.jpg' ).open,
    "Hester wants to eat your brains!",
    "Softie",
    "Zombie Bear",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Dave Darinko",
    Rails.root.join('public', 'images', 'dave-darinko.jpg' ).open,
    "Dave, Dave, Dave Darinko! He's a Dave Darinko! He loves to play pachinko! Dave, Dave, Dave Darinko!",
    "Softie",
    "UglyDoll",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "The Trio",
    Rails.root.join('public', 'images', 'trio.jpg' ).open,
    "Mysterious mysteries surround these cuties who arrived in tiny space pods from Key Food.",
    "Softie",
    "Space Creatures",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Hortense Horse",
    Rails.root.join('public', 'images', 'hortense.jpg' ).open,
    "From the wilds of Iceland, Hortense is trying to master a vegan version of fermented shark.",
    "Softie",
    "Horse",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Kyoko",
    Rails.root.join('public', 'images', 'kyoko.jpg' ).open,
    "Weird little lady with an overflow of creative energy.",
    "Softie",
    "Bunny?",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Panda Panda",
    Rails.root.join('public', 'images', 'panda.jpg' ).open,
    "Gruff but loveable, Panda is a very serious panda.",
    "Softie",
    "Panda",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Pouffy P Fair",
    Rails.root.join('public', 'images', 'pouffy.jpg' ).open,
    "Pouffy is a pretty laid back older lady with a real flair for fashion.",
    "Softie",
    "Cat",
    19840228,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Vito Fair",
    Rails.root.join('public', 'images', 'vito.jpg' ).open,
    "A retired pugilist, Vito has a great many friends in low places.",
    "Softie",
    "Koala",
    nil,
    User.find_by(username: "maury_povich")
  ],
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

cuties = Cuty.all

cuties.each do |cutie|
  4.times do
    Post.create(
      body: Faker::Lovecraft.paragraph,
      cuty: cutie
    )
  end
end
