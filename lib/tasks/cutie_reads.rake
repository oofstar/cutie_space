desc "update status automatically with book read"
task auto_update: :environment do

  @action_cuties = Cuty.where(wild: 1)

  @status_updates = [
    "9 January 1909
    The last day out we have shot our bolt and the tale is 88.23 S 162 E. The wind eased down at 1 am. At 2 am we were up and had breakfast and shortly after 4 am started south with the Union Jacks and the brass Cylinder of Stamps. At 9 am hard quick marching we were in 88.23 and there hoisted H.M.'s flag took possession of the plateau in the name of H.M. and called it King Edward Plateau. Homeward Bound. Whatever regrets may be we have done our best.",

    "And Bianca was driving me crazy, saying how she’s researching my days in Pittsburgh for her book on Great Men, and she went on and on about how I broke the system, broke the system, broke the system, and I felt like saying, “Look, Bianca, I’m just here. I’m just a working person. How did I break the system?” God, she’s dumb.",

    "Since the 21st we have had a continuous gale from W.S.W. and S.W. We had fuel to make two cups of tea apiece and bare food for two days on the 20th. Every day we have been ready to start for our depot 11 miles away, but outside the door of the tent it remains a scene of whirling drift. I do not think we can hope for any better things now. We shall stick it out to the end, but we are getting weaker, of course, and the end cannot be far.",

    "We met at 11:00 AM today. That is, Stalin, Churchill and the U.S. president. But I had a most important session with Lord Mountbatten and General Marshall before that. We have discovered the most terrible bomb in the history of the world. It may be the fire destruction prophesied in the Euphrates Valley era, after Noah and his fabulous ark. Anyway, we think we have found the way to cause a disintegration of the atom. An experiment in the New Mexico desert was startling—to put it mildly. Thirteen pounds of the explosive caused a crater six hundred feet deep and twelve hundred feet in diameter, knocked over a steel tower a half mile away, and knocked men down ten thousand yards away.",

    "She had a nose like the Duke of Wellington & great horse teeth & cold prominent eyes. When we came in she was sitting perched on a 3 cornered chair with knitting in her hands. An arrow fastened her collar. And before 5 minutes had passed she told us that two of her sons had been killed in the war. This, one felt, was to her credit. She taught dressmaking. Everything in the room was red brown & glossy. Sitting there I tried to coin a few compliments. But they perished in the icy sea between us. And then there was nothing."
  ]

  puts "hello"


  @action_cuties.each do |cutie|
    puts cutie.name
    Post.create(
      body: @status_updates.sample,
      cuty: cutie
    )
  end

  puts "everyone updated"
end
