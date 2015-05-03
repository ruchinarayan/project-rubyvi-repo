# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  UID         :string
#  firstName   :string
#  lastName    :string
#  email       :string
#  phoneNumber :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  notes       :string
#


require 'test_helper'

class StudentTest < ActiveSupport::TestCase
 def setup
    @student = Student.new(UID: "U00053557", firstName: "krishna", lastName: "chikkala", email: "vkchkkla@memphis.edu", phoneNumber: "9016049107",status: "passed")
  end

  test "should be valid" do
    assert @student.valid?
  end
  test "student Name should be present" do
    @student.UID = " "
    assert_not @student.valid?
  end
  test "student firstName should be present" do
    @student.firstName = " "
    assert_not @student.valid?
  end
test "student lastName should be present" do
    @student.lastName = " "
    assert_not @student.valid?
  end
  test "student Email should be present" do
    @student.email = " "
    assert_not @student.valid?
  end 
   test "student phoneNumber should be present" do
    @student.phoneNumber = " "
    assert_not @student.valid?
  end
   test "student status should be present" do
    @student.status = "  "
    assert_not @student.valid?
  end
end
