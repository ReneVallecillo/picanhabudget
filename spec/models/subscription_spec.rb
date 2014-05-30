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

require 'spec_helper'

describe Subscription do
  pending "add some examples to (or delete) #{__FILE__}"
end
