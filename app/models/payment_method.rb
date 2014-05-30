# == Schema Information
#
# Table name: payment_methods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class PaymentMethod < ActiveRecord::Base

  has_many :subscriptions
end
