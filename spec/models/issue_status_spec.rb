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
    it "does smth" do
      pp described_class.all
    end
  end

  pending "add some examples to (or delete) #{__FILE__}"
end
