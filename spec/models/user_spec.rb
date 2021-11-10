# == Schema Information
#
# Table name: users
#
#  id                     :bigint           not null, primary key
#  name                   :string
#  email                  :string
#  avatar_url             :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#
require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#validations" do

    it "has valid factory" do
      user = build :user
      expect(user).to be_valid
    end

    it "validates presence of attributes" do
      user = build :user, email: nil, password: nil
      expect(user).not_to be_valid
      expect(user.errors.messages[:email]).to include("can't be blank")
      expect(user.errors.messages[:password]).to include("can't be blank")
    end

    it "validates the uniqueness of email" do
      first_user = create :user
      expect(first_user).to be_valid

      second_user = build :user, email: first_user.email
      expect(second_user).not_to be_valid
      expect(second_user.errors[:email]).to include("has already been taken")

      second_user.email = "new-email@example.com"
      expect(second_user).to be_valid
    end
  end
end
