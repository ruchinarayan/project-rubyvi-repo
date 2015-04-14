# == Schema Information
#
# Table name: students
#
#  id          :integer          not null, primary key
#  UID         :string
#  firstName   :string
#  lastName    :string
#  email       :string
#  phoneNumber :string
#  status      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  notes       :string
#


class Student < ActiveRecord::Base

	has_many :honors, class_name: "Honor"
	has_many :professors, through: :honors
	has_many :courses, through: :honors
end
