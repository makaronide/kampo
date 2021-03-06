# == Schema Information
#
# Table name: kampo_shoyaku_relations
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  kampo_id   :integer
#  shoyaku_id :integer
#
# Indexes
#
#  index_kampo_shoyaku_relations_on_kampo_id    (kampo_id)
#  index_kampo_shoyaku_relations_on_shoyaku_id  (shoyaku_id)
#
# Foreign Keys
#
#  fk_rails_...  (kampo_id => kampos.id)
#  fk_rails_...  (shoyaku_id => shoyakus.id)
#

class KampoShoyakuRelation < ApplicationRecord
  belongs_to :kampo
  belongs_to :shoyaku
end
