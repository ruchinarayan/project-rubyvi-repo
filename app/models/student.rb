# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  UID         :string
#  firstName   :string
#  lastName    :string
#  email       :string
#  phoneNumber :integer
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  notes       :string
#


class Student < ActiveRecord::Base
end
