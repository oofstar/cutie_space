desc "update status automatically"
task status_update: :environment do

  @action_cuties = Cuty.where(wild: 1)

  @status_updates = [
    "9 January 1909
    The last day out we have shot our bolt and the tale is 88.23 S 162 E. The wind eased down at 1 am. At 2 am we were up and had breakfast and shortly after 4 am started south with the Union Jacks and the brass Cylinder of Stamps. At 9 am hard quick marching we were in 88.23 and there hoisted H.M.'s flag took possession of the plateau in the name of H.M. and called it King Edward Plateau. Homeward Bound. Whatever regrets may be we have done our best.",

    "And Bianca was driving me crazy, saying how she’s researching my days in Pittsburgh for her book on Great Men, and she went on and on about how I broke the system, broke the system, broke the system, and I felt like saying, “Look, Bianca, I’m just here. I’m just a working person. How did I break the system?” God, she’s dumb.",

    "Since the 21st we have had a continuous gale from W.S.W. and S.W. We had fuel to make two cups of tea apiece and bare food for two days on the 20th. Every day we have been ready to start for our depot 11 miles away, but outside the door of the tent it remains a scene of whirling drift. I do not think we can hope for any better things now. We shall stick it out to the end, but we are getting weaker, of course, and the end cannot be far.",

    "We met at 11:00 AM today. That is, Stalin, Churchill and the U.S. president. But I had a most important session with Lord Mountbatten and General Marshall before that. We have discovered the most terrible bomb in the history of the world. It may be the fire destruction prophesied in the Euphrates Valley era, after Noah and his fabulous ark. Anyway, we think we have found the way to cause a disintegration of the atom. An experiment in the New Mexico desert was startling—to put it mildly. Thirteen pounds of the explosive caused a crater six hundred feet deep and twelve hundred feet in diameter, knocked over a steel tower a half mile away, and knocked men down ten thousand yards away.",

    "She had a nose like the Duke of Wellington & great horse teeth & cold prominent eyes. When we came in she was sitting perched on a 3 cornered chair with knitting in her hands. An arrow fastened her collar. And before 5 minutes had passed she told us that two of her sons had been killed in the war. This, one felt, was to her credit. She taught dressmaking. Everything in the room was red brown & glossy. Sitting there I tried to coin a few compliments. But they perished in the icy sea between us. And then there was nothing."
  ]

  def diary_entry(cutie)
    Post.create(
      body: @status_updates.sample,
      cuty: cutie
    )
  end

  def read_book(cutie)
    # sleeping prevents too many calls to the api at one time.
    sleep 2
    random_page = rand(9) + 1
    random_book = rand(19) + 1
    genre = cutie.favorite_genre
    # build api call url
    call_url = "https://www.goodreads.com/search.xml?key=#{ENV['GOODREADS_KEY']}&q=#{genre}&search_type=books&search%5Bfield=title&page=#{random_page}"
    response = HTTParty.get(call_url)

    book = response["GoodreadsResponse"]["search"]["results"]["work"][random_book]

    if book["average_rating"].to_f < 3
      post_content = "I tried to read #{book["best_book"]["title"]} by #{book["best_book"]["author"]["name"]} today, but I didn't think it was very good and I quit."
    elsif book["average_rating"].to_f > 4
      post_content = "I read #{book["best_book"]["title"]} by #{book["best_book"]["author"]["name"]} today. IT WAS SO GOOD!"
    else
      post_content = "I read #{book["best_book"]["title"]} by #{book["best_book"]["author"]["name"]} today. I liked it ok."
    end

    puts post_content + "\n" + book["best_book"]["small_image_url"]

    Post.create(
        body: post_content,
        cuty: cutie,
        media_url: book["best_book"]["small_image_url"],
        link_url: "https://www.goodreads.com/book/show/" + book["best_book"]["id"].to_s
      )

  end

  def make_friend(cutie)
    buds = cutie.friendslist
    new_friend = false
    tally = 1

    while new_friend == false && tally < @action_cuties.length
      new_bud = @action_cuties.sample
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

  puts "hello"

  @action_cuties.each do |cutie|
    # avoid book reading function for cuties without favorite genre selected
    if cutie.favorite_genre == "" || cutie.favorite_genre.nil?
      chance = rand(5)
    else
      chance = rand(6)
    end

    puts cutie.name
    puts chance

    if chance == 1
      puts "-diary"
      diary_entry(cutie)
    elsif chance == 5
      puts "-read a book"
      read_book(cutie)
    elsif chance == 3
      puts "-made a friend"
      make_friend(cutie)
    else
      puts "-no update"
    end

  end

  puts "everyone updated"
end
