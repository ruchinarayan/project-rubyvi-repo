# == Schema Information
#
# Table name: honors
#
#  id           :integer          not null, primary key
#  contract_id  :integer
#  uid          :string
#  course_id    :string
#  prof_email   :string
#  semester     :string
#  year         :integer
#  grade        :string
#  pdf          :binary
#  dates        :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  student_id   :integer
#  professor_id :integer
#  corse_id     :integer
#

class Honor < ActiveRecord::Base
	before_save { self.prof_email = prof_email.downcase }
   validates :prof_email,
            presence: true,
            length: { maximum: 100 }
   validates :uid, presence: true, length: { maximum: 9}
   validates :contract_id, presence: true
   validates :course_id, presence: true
   validates :semester, presence: true
   validates :year, presence: true
   validates :dates, presence: true

   belongs_to :professor, class_name: "Professor"
   belongs_to :course, class_name: "Course"
   belongs_to :student, class_name: "Student"

  def self.Keyword_search(keyword)
    keyword = "%"+keyword+"%"
       # @honors= Honor.where('contract_id LIKE ? or uid LIKE ? or firstName LIKE ? or lastName LIKE ? or email LIKE ? or phoneNumber LIKE ? or semester LIKE ? or profName LIKE ? or profEmail LIKE ? or course_id LIKE ? or year LIKE ? or present_date LIKE ?',keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword,keyword)
    @honors= Honor.where('course_id LIKE ?' ,keyword)

    end
end
