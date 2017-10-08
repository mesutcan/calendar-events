FactoryGirl.define do
  factory :calendar do
    title { Faker::Name.name }
    movie_id 'aa-123'
    launch_date Date.today
    thumbnail_url 'https://i.imgur.com/g48UBCK.jpg'
  end
end