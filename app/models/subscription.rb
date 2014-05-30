class Subscription < ActiveRecord::Base

  
  belongs_to :school
  belongs_to :level
  belongs_to :section
  has_one :payment_method
end
