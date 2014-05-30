# == Schema Information
#
# Table name: schoolings
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Schooling < ActiveRecord::Base

  has_many :levels
end
