# == Schema Information
#
# Table name: pendings
#
#  id                   :integer          not null, primary key
#  contract_id          :integer
#  uid                  :string
#  firstName            :string
#  lastName             :string
#  email                :string
#  phoneNumber          :string
#  semester             :string
#  profName             :string
#  profEmail            :string
#  course_id            :string
#  year                 :integer
#  present_date         :string
#  pAttach_file_name    :string
#  pAttach_content_type :string
#  pAttach_file_size    :integer
#  pAttach_updated_at   :datetime
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  grade                :string
#  pdf                  :string

class Pending < ActiveRecord::Base
	 
	validates :contract_id, presence: true,   length: {maximum: 100 }
	validates :contract_id, presence: true,   length: {maximum: 100 }#should be unique constrained
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
   # has_attached_file :pAttach, :path => ":rails_root/public:url"
    attr_accessible :pdf
   mount_uploader :pdf, PdfUploader
	
	def self.Keyword_search(keyword)
    keyword = "%"+keyword+"%"
        @pendings= Pending.where('contract_id LIKE ? or uid LIKE ? or firstName LIKE ? or lastName LIKE ? or email LIKE ? or phoneNumber LIKE ? or semester LIKE ? or profName LIKE ? or profEmail LIKE ? or course_id LIKE ? or year LIKE ? or present_date LIKE ?',keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword)
    end

	#if search
    #    find(:all, :conditions => ['id LIKE ?', "%#{search}%","%#{search}%"])
    #else
     #   find(:all)
   # end
end

