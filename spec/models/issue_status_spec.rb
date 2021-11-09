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
require "rails_helper"

RSpec.describe IssueStatus, type: :model do
  describe "#validations" do
    it "has valid factory" do
      issue_status = build :issue_status
      expect(issue_status).to be_valid
    end

    it "validates presence of attributes" do
      issue_status = build :issue_status, name: nil, color: nil
      expect(issue_status).not_to be_valid
      expect(issue_status.errors.messages[:name]).to include("can't be blank")
      expect(issue_status.errors.messages[:color]).to include("can't be blank")
    end

    it "validates pattern of color" do
      issue_status_nil = build :issue_status, color: nil
      issue_status_wrong_pattern = build :issue_status, color: "red"
      issue_status_wrong_length = build :issue_status, color: "#1234567"

      expect(issue_status_nil).not_to be_valid
      expect(issue_status_wrong_pattern).not_to be_valid
      expect(issue_status_wrong_length).not_to be_valid

      expect(issue_status_wrong_pattern.errors.messages[:color]).to include("only allows HEX colors")
      expect(issue_status_wrong_length.errors.messages[:color]).to include("only allows HEX colors")
    end
  end
end
