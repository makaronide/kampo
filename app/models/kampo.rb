# == Schema Information
#
# Table name: kampos
#
#  id           :integer          not null, primary key
#  description  :text(65535)
#  name         :string(255)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  condition_id :integer
#
# Indexes
#
#  index_kampos_on_condition_id  (condition_id)
#
# Foreign Keys
#
#  fk_rails_...  (condition_id => conditions.id)
#

class Kampo < ApplicationRecord
  belongs_to :condition
  has_many :kampo_shoyaku_relations
  has_many :shoyaku, through: :kampo_shoyaku_relations

  def get_kampo
  end
end
