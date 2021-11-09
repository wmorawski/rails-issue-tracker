# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  name       :string
#  email      :string
#  password   :string
#  avatar_url :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user+#{n}@example.com" }
    name { "John Smith" }
    avatar_url { "https://example.com/avatar" }
  end
end
