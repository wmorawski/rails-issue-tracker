class IssueStatus < ApplicationRecord
  has_many :issues, dependent: :destroy
end
