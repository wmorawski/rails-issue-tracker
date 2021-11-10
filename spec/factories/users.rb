# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  email                  :string
#  avatar_url             :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    name { "John Smith" }
    avatar_url { "https://example.com/avatar" }
    password { "password" }
    password_confirmation { "password" }
  end
end
