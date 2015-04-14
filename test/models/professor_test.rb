# == Schema Information
#
# Table name: professors
#
#  id         :integer          not null, primary key
#  profName   :string
#  profEmail  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @professor = Professor.new(profName: "Ruchi", profEmail: "rruchi@memphis.edu")
  end

  test "should be valid" do
    assert @professor.valid?
  end
  test "Professor Name should be present" do
    @professor.profName = "     "
    assert_not @professor.valid?
  end
  test "Professor Email should be present" do
    @professor.profEmail = "     "
    assert_not @professor.valid?
  end
end
