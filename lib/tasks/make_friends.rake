desc "cuties make friends"
task make_friends: :environment do

  action_cuties = Cuty.where(wild: 1)

  puts "hello"

  action_cuties.each do |cutie|
    chance = rand(100)
    puts cutie.name
    puts chance

    if chance > 83
      puts cutie.name

      buds = cutie.friendslist
      new_friend = false
      tally = 1

      while new_friend == false && tally < action_cuties.length
        new_bud = action_cuties.sample
        if new_bud != cutie && !buds.include?(new_bud)
          Friendship.create(
            friender: cutie,
            friendee: new_bud
          )
          new_friend = true
          Post.create(
            body: "Became buds with #{new_bud.name}",
            cuty: cutie
          )

          Post.create(
            body: "Became buds with #{cutie.name}",
            cuty: new_bud
          )
        else
          tally += 1
        end

      end


    end
  end

end
