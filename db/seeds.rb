status_updates = [
  "9 January 1909
  The last day out we have shot our bolt and the tale is 88.23 S 162 E. The wind eased down at 1 am. At 2 am we were up and had breakfast and shortly after 4 am started south with the Union Jacks and the brass Cylinder of Stamps. At 9 am hard quick marching we were in 88.23 and there hoisted H.M.'s flag took possession of the plateau in the name of H.M. and called it King Edward Plateau. Homeward Bound. Whatever regrets may be we have done our best.",

  "And Bianca was driving me crazy, saying how she’s researching my days in Pittsburgh for her book on Great Men, and she went on and on about how I broke the system, broke the system, broke the system, and I felt like saying, “Look, Bianca, I’m just here. I’m just a working person. How did I break the system?” God, she’s dumb.",

  "Since the 21st we have had a continuous gale from W.S.W. and S.W. We had fuel to make two cups of tea apiece and bare food for two days on the 20th. Every day we have been ready to start for our depot 11 miles away, but outside the door of the tent it remains a scene of whirling drift. I do not think we can hope for any better things now. We shall stick it out to the end, but we are getting weaker, of course, and the end cannot be far.",

  "We met at 11:00 AM today. That is, Stalin, Churchill and the U.S. president. But I had a most important session with Lord Mountbatten and General Marshall before that. We have discovered the most terrible bomb in the history of the world. It may be the fire destruction prophesied in the Euphrates Valley era, after Noah and his fabulous ark. Anyway, we think we have found the way to cause a disintegration of the atom. An experiment in the New Mexico desert was startling—to put it mildly. Thirteen pounds of the explosive caused a crater six hundred feet deep and twelve hundred feet in diameter, knocked over a steel tower a half mile away, and knocked men down ten thousand yards away.",

  "She had a nose like the Duke of Wellington & great horse teeth & cold prominent eyes. When we came in she was sitting perched on a 3 cornered chair with knitting in her hands. An arrow fastened her collar. And before 5 minutes had passed she told us that two of her sons had been killed in the war. This, one felt, was to her credit. She taught dressmaking. Everything in the room was red brown & glossy. Sitting there I tried to coin a few compliments. But they perished in the icy sea between us. And then there was nothing."
]


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
    'Interlaken Cutie Crew',
    'Pants',
    'McGee',
    'thealisonfair@gmail.com',
    "password"
  ],

  [
    'maury_povich',
    'Russell Street Cutie Crew',
    'Carmine',
    'Grispino',
    'al@nakatomiplaza.com',
    "password"
  ],

  [
    'grandma_mullen',
    'Connemara Cutie Crew',
    'Grandma',
    'Mullen',
    'surveypouf@gmail.com',
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
    "http://oofindustries.net/cutie-pics/alex.jpg",
    "Alex grew up in brooklyn and misses it terribly!",
    "Softie",
    "Polar Bear",
    19850228,
    User.find_by(username: "Oofstar")
  ],

  [
    "Alox P Fair",
    "http://oofindustries.net/cutie-pics/alox.jpg",
    "Alox is a well known QTV personality and the mastermind behind the concept of Spoon Therapy.",
    "Softie",
    "Polar Bear",
    19851007,
    User.find_by(username: "Oofstar")
  ],

  [
    "Manatee Manatee",
    "http://oofindustries.net/cutie-pics/manny.jpg",
    "Manny is passionate about social justice, clean water, and hugs.",
    "Softie",
    "Manatee",
    nil,
    User.find_by(username: "Oofstar")
  ],

  [
    "Small Timer",
    "http://oofindustries.net/cutie-pics/small-timer.jpg",
    "Small Timer works down in the tiny office right by the exit. He keeps long hours, does a great job, and gets zero glory or reward. You know what that means... You got that right... PARTY TIME! Please join Small Timer on his fantastic adventure as he expresses his wild side and devours the wonders life has to offer. Wonders such as dry toast, no butter",
    "Softie",
    "UglyDoll",
    nil,
    User.find_by(username: "Oofstar")
  ],

  [
    "Anthony",
    "http://oofindustries.net/cutie-pics/anthony.jpg",
    "Anthony loves rock and roll and fire!",
    "Softie",
    "Dragon",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Herbie Hippo",
    "http://oofindustries.net/cutie-pics/herbie.jpg",
    "Herbert J Hippopotamus thinks the world is a beautiful place.",
    "Softie",
    "Hippo",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Pumpkin",
    "http://oofindustries.net/cutie-pics/pumpkin.jpg",
    "Pumpkin likes to travel and feel the wind on her face.",
    "Softie",
    "Pound Puppy",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Smoochie",
    "http://oofindustries.net/cutie-pics/smoochie.jpg",
    "Smoochie likes vegan baking and can't get enough of snacks.",
    "Softie",
    "Pound Puppy",
    nil,
    User.find_by(username: "pants_mcgee")
  ],

  [
    "Snorlax",
    "http://oofindustries.net/cutie-pics/snorlax.jpg",
    "Snorlax loves hardcore music, moshing, snacks and naps!",
    "Softie",
    "Pocket Monster",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Hester Golem",
    "http://oofindustries.net/cutie-pics/hester.jpg",
    "Hester wants to eat your brains!",
    "Softie",
    "Zombie Bear",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Dave Darinko",
    "http://oofindustries.net/cutie-pics/dave-darinko.jpg",
    "Dave, Dave, Dave Darinko! He's a Dave Darinko! He loves to play pachinko! Dave, Dave, Dave Darinko!",
    "Softie",
    "UglyDoll",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "The Trio",
    "http://oofindustries.net/cutie-pics/trio.jpg",
    "Mysterious mysteries surround these cuties who arrived in tiny space pods from Key Food.",
    "Softie",
    "Space Creatures",
    nil,
    User.find_by(username: "maury_povich")
  ],

  [
    "Hortense Horse",
    "http://oofindustries.net/cutie-pics/hortense.jpg",
    "From the wilds of Iceland, Hortense is trying to master a vegan version of fermented shark.",
    "Softie",
    "Horse",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Kyoko",
    "http://oofindustries.net/cutie-pics/kyoko.jpg",
    "Weird little lady with an overflow of creative energy.",
    "Softie",
    "Bunny?",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Panda Panda",
    "http://oofindustries.net/cutie-pics/panda.jpg",
    "Gruff but loveable, Panda is a very serious panda.",
    "Softie",
    "Panda",
    nil,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Pouffy P Fair",
    "http://oofindustries.net/cutie-pics/pouffy.jpg",
    "Pouffy is a pretty laid back older lady with a real flair for fashion.",
    "Softie",
    "Cat",
    19840228,
    User.find_by(username: "grandma_mullen")
  ],

  [
    "Vito Fair",
    "http://oofindustries.net/cutie-pics/vito.jpg",
    "A retired pugilist, Vito has a great many friends in low places.",
    "Softie",
    "Koala",
    nil,
    User.find_by(username: "maury_povich")
  ],
]

my_cuties.each do |cutie_info|
  name, remote_cutie_pic_url, bio, cutie_type, species, birthdate, user = cutie_info
  cutie = Cuty.create(
    name: name,
    remote_cutie_pic_url: remote_cutie_pic_url,
    bio: bio,
    cutie_type: cutie_type,
    species: species,
    birthdate: birthdate,
    user: user,
    wild: 0
  )

  team = cutie.user.cuties

  team.each do |member|
    if member != cutie
      Friendship.create(
        friender: member,
        friendee: cutie
      )
    end
  end

end



# cuties = Cuty.all

# cuties.each do |cutie|
#   4.times do
#     Post.create(
#       body: status_updates.sample,
#       cuty: cutie
#     )
#   end
# end
