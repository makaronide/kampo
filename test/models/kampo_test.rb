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

require 'test_helper'

class KampoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
