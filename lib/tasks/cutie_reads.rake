desc "update status automatically with book read"
task cutie_reads: :environment do

  @action_cuties = Cuty.where(wild: 1)
  puts "hello"

  @action_cuties.each do |cutie|
    chance = rand(100)
    puts cutie.name
    puts chance
    if chance < 50
      random_page = rand(9) + 1
      random_book = rand(19) + 1
      genre = cutie.favorite_genre
      # build api call url
      call_url = "https://www.goodreads.com/search.xml?key=#{ENV['GOODREADS_KEY']}&q=#{genre}&search_type=books&search%5Bfield=title&page=#{random_page}"
      response = HTTParty.get(call_url)

      book = response["GoodreadsResponse"]["search"]["results"]["work"][random_book]

      # puts "page: #{random_page}"
      # puts "book: #{random_book}"
      # puts "genre: #{genre}"
      # puts "url: #{call_url}"
      # puts "book title: #{book["best_book"]["title"]}"

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

    # api can only be called once per second
    sleep 2
  end

  puts "everyone updated"
end
