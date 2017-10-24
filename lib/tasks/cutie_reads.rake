desc "update status automatically with book read"
task auto_update: :environment do

  @action_cuties = Cuty.where(wild: 1)

  puts "hello"

  

  # @action_cuties.each do |cutie|
  #   puts cutie.name
  #   Post.create(
  #     body: @status_updates.sample,
  #     cuty: cutie
  #   )
  # end

  puts "everyone updated"
end
