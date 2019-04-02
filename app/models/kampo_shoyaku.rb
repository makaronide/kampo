# == Schema Information
#
# Table name: kampo_shoyakus
#
#  id         :integer          not null, primary key
#  kampo_id   :integer
#  shoyaku_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class KampoShoyaku < ApplicationRecord
end
