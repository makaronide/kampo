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

require 'test_helper'

class KampoShoyakuTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
