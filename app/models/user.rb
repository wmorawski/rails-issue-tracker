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
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :email, presence: true, uniqueness: true
  validates :encrypted_password, presence: true

  has_many :created_issues, class_name: "Issue", foreign_key: "author_id", dependent: :destroy, inverse_of: "author"
  has_many :assigned_issues, class_name: "Issue", foreign_key: "assignee_id", dependent: :destroy, inverse_of: "assignee"
end
