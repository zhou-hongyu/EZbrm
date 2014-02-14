FactoryGirl.define do

  factory :user do
    email { Faker::Internet.email }
    password 'swordfish'
  end

  factory :location do
    user
    address '101 main street'
    latitude '58.1'
    longitude '23.6'
    name 'Old School'
    category 'Cafe'
  end

  factory :competitor do
    user
    location
    name 'Papagayo'
    url 'http://www.yelp.com/biz/papagayo-boston-3#query:tacos'
    image_url 'http://s3-media4.ak.yelpcdn.com/bphoto/GQUlycVxOmQHuIVHjTJHJQ/90s.jpg'
    review_count '5'
    category 'mexican'

  end
end