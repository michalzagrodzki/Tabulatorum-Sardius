require 'faker'

FactoryGirl.define do
  factory :story do |f|
    f.name { Faker::Address.city }
    f.latitude { Faker::Address.latitude }
    f.longitude { Faker::Address.longitude }
  end

end
