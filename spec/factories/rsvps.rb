FactoryBot.define do
  factory :rsvp do
    attending { Faker::Boolean.boolean}
    invite_id {nil}
  end
end