class Issue < ApplicationRecord
  belongs_to :author, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :issue_status
end
