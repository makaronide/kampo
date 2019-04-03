# == Schema Information
#
# Table name: questions
#
#  id         :integer          not null, primary key
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  kampo_id   :integer
#  symptom_id :integer
#
# Indexes
#
#  index_questions_on_kampo_id  (kampo_id)
#
# Foreign Keys
#
#  fk_rails_...  (kampo_id => kampos.id)
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
