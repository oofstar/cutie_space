FactoryGirl.define do
  factory :cuty do
    sequence(:name) { |n| "Pie Face#{n}" }
    cutie_pic { Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'support', 'images', 'photo.jpg' ))}
    bio "I am soooo cute!"
    cutie_type "Softie"
    species "Bear"
    birthdate 20170920
    user
  end
end
