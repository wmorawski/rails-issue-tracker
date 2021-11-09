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
require 'rails_helper'

RSpec.describe Issue, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
