# == Schema Information
#
# Table name: questions
#
#  id           :integer          not null, primary key
#  content      :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  condition_id :integer
#  kampo_id     :integer
#
# Indexes
#
#  index_questions_on_condition_id  (condition_id)
#  index_questions_on_kampo_id      (kampo_id)
#
# Foreign Keys
#
#  fk_rails_...  (condition_id => conditions.id)
#  fk_rails_...  (kampo_id => kampos.id)
#

require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
