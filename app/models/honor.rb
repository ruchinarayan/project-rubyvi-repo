# == Schema Information
#
# Table name: honors
#
#  id          :integer          not null, primary key
#  contract_id :integer
#  uid         :string
#  course_id   :string
#  prof_email  :string
#  semester    :string
#  year        :integer
#  grade       :string
#  pdf         :binary
#  dates       :date
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
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
   validates :grade, presence: true
  validates :dates, presence: true
end
