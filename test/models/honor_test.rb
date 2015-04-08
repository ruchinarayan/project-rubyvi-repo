# == Schema Information
#
# Table name: honors
#
#  id          :integer          not null, primary key
#  contract_id :integer
#  uid         :string
#  course_id   :string
#  prof_email  :string
#  semester    :string
#  year        :integer
#  grade       :string
#  pdf         :binary
#  dates       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class HonorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
