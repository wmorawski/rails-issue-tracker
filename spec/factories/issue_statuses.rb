# == Schema Information
#
# Table name: issue_statuses
#
#  id              :bigint           not null, primary key
#  name            :string
#  marks_as_closed :boolean          default(FALSE)
#  color           :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :issue_status do
    name { Faker::Verb.past }
    color { Faker::Color.hex_color }
    marks_as_closed { Faker::Boolean.boolean }
  end
end
