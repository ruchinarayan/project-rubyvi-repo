# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  UID         :integer
#  firstName   :string
#  lastName    :string
#  email       :string
#  phoneNumber :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
