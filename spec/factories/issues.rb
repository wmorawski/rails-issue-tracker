# == Schema Information
#
# Table name: issues
#
#  id              :bigint           not null, primary key
#  title           :string
#  description     :text
#  due_date        :datetime
#  author_id       :bigint
#  assignee_id     :bigint
#  issue_status_id :bigint
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
FactoryBot.define do
  factory :issue do
    sequence(:title) { |n| "Issue ##{n}" }
    description { "Some description" }
    issue_status
    association :author, factory: :user
  end
end
