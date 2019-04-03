# == Schema Information
#
# Table name: kampos
#
#  id           :integer          not null, primary key
#  description  :text(65535)
#  name         :string(255)
#  true_number  :integer
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

require 'test_helper'

class KampoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
