# == Schema Information
#
# Table name: checklists
#
#  id         :integer          not null, primary key
#  uid        :string
#  unhp       :boolean
#  honexpju   :boolean
#  honexpse   :boolean
#  honthese   :boolean
#  gpa        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ChecklistTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
