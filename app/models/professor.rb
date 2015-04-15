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

class Professor < ActiveRecord::Base

	validates :profName, presence: true
	validates :profEmail, presence: true

	has_many :honors, class_name: "Honor"
	has_many :students, through: :honors
	has_many :courses, through: :honors
end

