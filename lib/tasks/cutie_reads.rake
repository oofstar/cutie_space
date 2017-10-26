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
      call_url = "https://www.goodreads.com/search.xml?key=#{ENV['GOODREADS_KEY']}&q=#{genre}&search_type=books&search%5Bfield=genre&page=#{random_page}"
      response = HTTParty.get(call_url)

      book = response["GoodreadsResponse"]["search"]["results"]["work"][random_book]
      
      puts "page: #{random_page}"
      puts "book: #{random_book}"
      puts "genre: #{genre}"
      puts "url: #{call_url}"
      puts "book title: #{book["best_book"]["title"]}"

    end

    sleep 2
  end

  #
  # title = response["GoodreadsResponse"]["search"]["results"]["work"][1]["best_book"]["title"]

  # @action_cuties.each do |cutie|
  #   puts cutie.name
  #   Post.create(
  #     body: @status_updates.sample,
  #     cuty: cutie
  #   )
  # end

  puts "everyone updated"
end
