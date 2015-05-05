# == Schema Information
#
# Table name: honors
#
#  id                  :integer          not null, primary key
#  contract_id         :integer
#  uid                 :string
#  course_id           :string
#  prof_email          :string
#  semester            :string
#  year                :integer
#  grade               :string
#  pdf                 :binary
#  dates               :date
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  student_id          :integer
#  professor_id        :integer
#  corse_id            :integer
#  attach_file_name    :string
#  attach_content_type :string
#  attach_file_size    :integer
#  attach_updated_at   :datetime
#

require 'test_helper'

class HonorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
def setup
    @honor = Honor.new(contract_id: 12, uid: "U00564017", course_id: "comp7012", prof_email: "user@example.com",
                     semester: "spring", year: 2015, grade: "", pdf: "", dates: "10/12/2014")
  end

  test "should be valid" do
    assert @honor.valid?
  end

  test "contract_id should be present" do
    @honor.contract_id = "     "
    assert_not @honor.valid?
  end

  test "uid should be present" do
    @honor.uid = "     "
    assert_not @honor.valid?
  end

  test "course_id should be present" do
    @honor.course_id = "     "
    assert_not @honor.valid?
  end

  test "email should be present" do
    @honor.prof_email = "     "
    assert_not @honor.valid?
  end

  test "semester should be present" do
    @honor.semester = "     "
    assert_not @honor.valid?
  end

  test "year should be present" do
    @honor.year = "     "
    assert_not @honor.valid?
  end

  test "grade can be blank" do
          @honor.grade=" "       
             assert @honor.valid?
  end

  test "pdf can be blank" do
          @honor.pdf=" "       
             assert @honor.valid?
  end

  test "dates should be present" do
    @honor.dates = "     "
    assert_not @honor.valid?
  end

  test "email should not be too long" do
    @honor.prof_email = "a" * 244 + "@example.com"
    assert_not @honor.valid?
  end

  test "email validation should accept valid addresses" do
    valid_addresses = %w[user@example.com USER@foo.COM A_US-ER@foo.bar.org
                         first.last@foo.jp alice+bob@baz.cn]
    valid_addresses.each do |valid_address|
      @honor.prof_email = valid_address
      assert @honor.valid?, "#{valid_address.inspect} should be valid"
    end
  end

  # test "email validation should reject invalid addresses" do
  #   invalid_addresses = %w[user@example,com user_at_foo.org user.name@example.
  #                          foo@bar_baz.com foo@bar+baz.com]
  #   invalid_addresses.each do |invalid_address|
  #     @honor.prof_email = invalid_address
  #     assert_not @honor.valid?, "#{invalid_address.inspect} should be invalid"
  #   end
  # end

  # test "email addresses should be unique" do
  #   duplicate_user = @honor.dup
  #   duplicate_user.prof_email = @honor.prof_email.upcase
  #   @honor.save
  #   assert_not duplicate_user.valid?
  # end

  
end
