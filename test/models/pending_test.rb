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
#

require 'test_helper'

class PendingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end


def setup
    @pending = Pending.new(contract_id: 1245, uid: "U0005355", firstName: "Krishna", lastName: "chikkala", email: "hsirrk341@gmail.com", phoneNumber: "9016049107", semester: "fall2014", profName: "Ravi", profEmail: "asdkf@memphis.edu", course_id: "3827", year:2012, present_date: Date.new(1955,3,19))
  end

  test "should be valid" do
    assert @pending.valid?
  end

  test "contract_id should be present" do
    @pending.contract_id = "     "
    assert_not @pending.valid?
  end

  test "First name should be present" do
    @pending.firstName = "     "
    assert_not @pending.valid?
  end


  test "Last Name should be present" do
    @pending.lastName = "     "
    assert_not @pending.valid?
  end

  test "Uid should be present" do
    @pending.uid = "     "
    assert_not @pending.valid?
  end

  test "Course id should be present" do
    @pending.course_id = "     "
    assert_not @pending.valid?
  end

 test "professor name should be present" do
    @pending.profName = "     "
    assert_not @pending.valid?
  end

  test "professor email should be present" do
    @pending.profEmail = "     "
    assert_not @pending.valid?
  end
  test "email should be present" do
    @pending.email = "     "
    assert_not @pending.valid?
  end
  test "phone number should be present" do
    @pending.phoneNumber = "     "
    assert_not @pending.valid?
  end

  test "semester should be present" do
    @pending.semester = "     "
    assert_not @pending.valid?
  end

  test "year should be present" do
    @pending.year = "     "
    assert_not @pending.valid?
  end

  
  test "presentDate should be present" do
    @pending.present_date = "     "
    assert_not @pending.valid?
  end

  test "professor email should not be too long" do
    @pending.profEmail = "a" * 120 + "@example.com"
    assert_not @pending.valid?
  end

 test "email should not be too long" do
    @pending.email = "a" * 120 + "@example.com"
    assert_not @pending.valid?
end
  test "professor email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @pending.profEmail = valid_address
      assert @pending.valid?, "#{valid_address.inspect} should be valid"
    end
  end


  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @pending.email = valid_address
      assert @pending.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  # test " professor email validation should reject invalid addresses" do
  #   invalid_addresses = %w[user@example.com user_at_foo.org user.name@example.
  #                          foo@bar_baz.com foo@bar+baz.com]
  #   invalid_addresses.each do |invalid_address|
  #     @pending.profEmail = invalid_address
  #     assert_not @pending.valid?, "#{invalid_address.inspect} should be invalid"
  #   end
  # end

end
