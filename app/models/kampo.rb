# == Schema Information
#
# Table name: kampos
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  description  :text(65535)
#  condition_id :integer
#  true_number  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Kampo < ApplicationRecord
  belongs_to :condition
  has_many :kampo_shoyaku_relations
  has_many :shoyaku, through: :kampo_shoyaku_relations
end
