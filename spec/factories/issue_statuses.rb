FactoryBot.define do
  factory :issue_status do
    name { Faker::Verb.past }
    color { Faker::Color.hex_color }
    marks_as_closed { Faker::Boolean.boolean }
  end
end
