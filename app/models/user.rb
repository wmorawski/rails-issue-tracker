class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  has_many :created_issues, class_name: "Issue", foreign_key: "author_id", dependent: :destroy, inverse_of: "author"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id", dependent: :destroy, inverse_of: "assignee"
end
