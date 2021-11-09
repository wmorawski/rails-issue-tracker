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
  describe "#validations" do
    it "has valid factory" do
      issue = build :issue
      expect(issue).to be_valid
    end

    it "validates presence of attributes" do
      issue = build :issue, title: nil
      expect(issue).not_to be_valid
      expect(issue.errors.messages[:title]).to include("can't be blank")
    end
  end
end
