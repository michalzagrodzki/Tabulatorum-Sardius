require 'faker'

FactoryGirl.define do
  factory :chapter do |f|
    f.text { Faker::Lorem.paragraph }
  end

end
