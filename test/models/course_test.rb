# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  course_id   :string
#  course_name :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#


require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @course = Course.new(course_id: "comp7012", course_name: "SE")
  end

  test "should be valid" do
    assert @course.valid?
  end

  test "course_id should be present" do
    @course.course_id = "     "
    assert_not @course.valid?
  end

  test "course_name should be present" do
    @course.course_name = "     "
    assert_not @course.valid?
  end

end
