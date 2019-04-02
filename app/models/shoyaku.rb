# == Schema Information
#
# Table name: shoyakus
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  picture_file :text(65535)
#  description  :text(65535)
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Shoyaku < ApplicationRecord
end
