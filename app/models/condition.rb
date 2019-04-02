# == Schema Information
#
# Table name: conditions
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Condition < ApplicationRecord
  has_many :questions, dependent: :delete_all
  has_many :kampos, dependent: :delete_all
end
