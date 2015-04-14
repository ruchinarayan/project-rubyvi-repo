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


class Course < ActiveRecord::Base
	
	validates :course_id, presence: true
	validates :course_name, presence: true
	has_many :honors, class_name: "Honor"
	has_many :students, through: :honors
	has_many :professors, through: :honors
end
