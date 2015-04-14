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
<<<<<<< HEAD


require 'test_helper'
=======
>>>>>>> 29b010e486dc8916fcac1d07add68f05d6d3db30

require 'test_helper'

class ProfessorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
    @professor = Pending.new(profName: "Ruchi", profEmail: "rruchi@memphis.edu")
  end

  test "should be valid" do
    assert @professor.valid?
  end
  test "Professor Name should be present" do
    @pending.profName = "     "
    assert_not @pending.valid?
  end
  test "Professor Email should be present" do
    @pending.profEmail = "     "
    assert_not @pending.valid?
  end
end
