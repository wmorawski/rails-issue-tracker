class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :created_issues, class_name: 'Issue', foreign_key: 'author_id'
  has_many :assigned_issues, class_name: 'Issue', foreign_key: 'assignee_id'
end
