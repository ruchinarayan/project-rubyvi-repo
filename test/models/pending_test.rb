# == Schema Information
#
# Table name: pendings
#
#  id           :integer          not null, primary key
#  contract_id  :integer
#  uid          :string
#  firstName    :string
#  lastName     :string
#  email        :string
#  phoneNumber  :string
#  semester     :string
#  profName     :string
#  profEmail    :string
#  course_id    :string
#  year         :integer
#  present_date :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  grade        :string
#  pdf          :binary
#

require 'test_helper'

class PendingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
