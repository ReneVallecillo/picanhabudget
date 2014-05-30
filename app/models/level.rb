class Level < ActiveRecord::Base
  belongs_to :schooling
  has_many :subscriptions
end
