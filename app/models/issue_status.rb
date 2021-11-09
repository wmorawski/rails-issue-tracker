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
  validates :color, presence: true, format: { with: /\A#[a-fA-F0-9]{6}\z/, message: "only allows HEX colors" }

  has_many :issues, dependent: :destroy
end
