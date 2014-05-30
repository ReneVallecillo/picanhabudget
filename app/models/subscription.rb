# == Schema Information
#
# Table name: subscriptions
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  lastname         :string(255)
#  grade_id         :integer
#  section_id       :integer
#  level_id         :integer
#  paymentmethod_id :integer
#  school_id        :integer
#  active           :boolean
#  fechaingreso     :date
#  fechainactivo    :date
#  created_at       :datetime
#  updated_at       :datetime
#

class Subscription < ActiveRecord::Base


  belongs_to :school
  belongs_to :level
  belongs_to :section
  belongs_to :payment_method
end
