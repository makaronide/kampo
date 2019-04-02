# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string(255)      not null
#  name_mei        :string(255)      not null
#  name_sei        :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#

class User < ApplicationRecord
  validates :name_sei, presence: true, length: {maximum: 10}
  validates :name_mei, presence: true, length: {maximum: 10}
  validates :email, presence: true, length: {maximum: 10}
  validates :password_digest, presence: true, length: {maximum: 10}
end
