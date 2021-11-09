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
class Issue < ApplicationRecord
  validates :title, presence: true
  validates :color, presence: true, format: { with: /#[a-fA-F0-9]{6}/, message: "only allows HEX colors" }

  belongs_to :author, class_name: "User"
  belongs_to :assignee, class_name: "User"
  belongs_to :issue_status
end
