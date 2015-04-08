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
	validates :course_id, presence: true,   length: {maximum: 20 }
	validates :course_name, presence: true,   length: {maximum: 100 }
end
