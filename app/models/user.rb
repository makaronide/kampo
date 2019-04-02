# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name_sei        :string(255)      not null
#  name_mei        :string(255)      not null
#  email           :string(255)      not null
#  password_digest :string(255)      not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ApplicationRecord
end
