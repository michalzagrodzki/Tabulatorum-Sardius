require 'faker'

FactoryGirl.define do
  factory :picture do |f|
    f.title { Faker::Lorem.word }
    f.link { Faker::Internet.url }
    f.story_id { Faker::Number(2) }
    f.latitude { Faker::Address.latitude }
    f.longitude { Faker::Address.longitude }
  end

end
