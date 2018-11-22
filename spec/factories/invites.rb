FactoryBot.define do
  factory :invite do
    name { Faker::FunnyName.name }
    plus_one {Faker::Boolean.boolean}
  end
end