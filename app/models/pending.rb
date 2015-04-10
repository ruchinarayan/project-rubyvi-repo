# == Schema Information
#
# Table name: pendings
#
#  id           :integer          not null, primary key
#  contract_id  :integer
#  uid          :string
#  firstName    :string
#  lastName     :string
#  email        :string
#  phoneNumber  :string
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
	 
	validates :contract_id, presence: true,   length: {maximum: 100 }
	validates :uid, presence: true,   length: {maximum: 100 }
	validates :firstName, presence: true,   length: {maximum: 100 }
	validates :lastName, presence: true,   length: {maximum: 100 }
	validates :email, presence: true,   length: {maximum: 100 }
	validates :phoneNumber, presence: true,   length: {maximum: 100 }
	validates :semester, presence: true,   length: {maximum: 100 }
	validates :profName, presence: true,   length: {maximum: 100 }
	validates :profEmail, presence: true, length: {maximum: 100 } 
	validates :course_id, presence: true,   length: {maximum: 100 }
	validates :year, presence: true, length: {maximum: 100 }
	validates :present_date, presence: true,   length: {maximum: 100 }
	 
	
	def self.search(search)
	  search_condition = "%" + search + "%"
	  find(:all, :conditions => ['contract_id LIKE ? OR uid LIKE ?', search_condition, search_condition])
	end 
	
end
>>>>>>> iqbal0410
