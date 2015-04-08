# == Schema Information
#
# Table name: pendings
#
#  id           :integer          not null, primary key
#  contract_id  :integer
#  uid          :integer
#  firstName    :string
#  lastName     :string
#  email        :string
#  phoneNumber  :integer
#  semester     :string
#  profName     :string
#  profEmail    :string
#  course_id    :string
#  year         :integer
#  present_date :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Pending < ActiveRecord::Base
end
