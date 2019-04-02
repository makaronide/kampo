# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  symptom_id :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Question < ApplicationRecord
  belongs_to :condition
end
