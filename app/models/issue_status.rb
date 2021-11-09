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
class IssueStatus < ApplicationRecord
  validates :name, presence: true
  validates :color, presence: true

  has_many :issues, dependent: :destroy
end
