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
	validates :UID, presence: true,   length: {maximum: 12 }
	validates :firstName, presence: true,   length: {maximum: 10 }
	validates :lastName, presence: true,   length: {maximum: 10 }
	validates :email, presence: true,   length: {maximum: 20 }
	validates :phoneNumber, presence: true,   length: {maximum: 10 }
	validates :status, presence: true,   length: {maximum: 12 }

	def self.to_csv(options = {})
	 CSV.generate(options) do |csv|
    csv << column_names
    all.each do |student|
      csv << student.attributes.values_at(*column_names)
    end
  end
end



	has_many :honors, class_name: "Honor"
	has_many :professors, through: :honors
	has_many :courses, through: :honors

	def self.Keyword_search(keyword)
     keyword = "%"+keyword+"%"
     @students= Student.where('firstName LIKE ? or uid LIKE ? or lastName LIKE ? or email LIKE ? or phoneNumber LIKE ? or status LIKE ?', keyword,keyword,keyword,keyword,keyword,keyword)
    #@honors= Honor.where('uid LIKE ?' ,keyword)

    end
end
 
