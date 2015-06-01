require 'faker'

FactoryGirl.define do
  factory :advice do |f|
    f.text { Faker::Lorem.paragraph }
  end

end
