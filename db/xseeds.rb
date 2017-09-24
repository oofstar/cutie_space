10.times do
  User.create(
    username: Faker::Internet.user_name,
    team_name: Faker::Space.agency,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email,
    password: "password"
  )
end

users = User.all
users.each do |user|
  3.times do
    Cuty.create(
      name: Faker::Lovecraft.deity,
      cutie_pic: Rails.root.join('spec', 'support', 'images', 'photo.jpg' ).open,
      bio: Faker::Lovecraft.paragraph,
      cutie_type: ["Softie", "Hard Guy", "Action Figure"].sample,
      species: Faker::HitchhikersGuideToTheGalaxy.specie,
      birthdate: Faker::Date.birthday(18, 65),
      user: user
    )
  end
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
