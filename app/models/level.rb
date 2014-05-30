# == Schema Information
#
# Table name: levels
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  schooling_id :integer
#

class Level < ActiveRecord::Base
  belongs_to :schooling
  has_many :subscriptions
end
