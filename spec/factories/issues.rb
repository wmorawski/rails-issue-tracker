FactoryBot.define do
  factory :issue do
    sequence(:name) { |n| "Issue ##{n}" }
    description { "Some description"}
    issue_status
  end
end
