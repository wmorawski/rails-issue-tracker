FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user+#{n}@example.com" }
    name { "John Smith" }
    avatar_url { "https://example.com/avatar" }
  end
end
