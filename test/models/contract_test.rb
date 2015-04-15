# == Schema Information
#
# Table name: contracts
#
#  id                :integer          not null, primary key
#  contract_identity :integer
#  email             :string
#  contractor_name   :string
#  uuid              :string
#  contractor_phone  :string
#  course            :string
#  section           :string
#  credit_hours      :integer
#  semester          :string
#  year              :integer
#  instructor        :string
#  instructor_email  :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class ContractTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
