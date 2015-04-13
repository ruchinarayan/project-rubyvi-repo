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
	def self.to_csv(options = {})
	 CSV.generate(options) do |csv|
    csv << column_names
    all.each do |student|
      csv << student.attributes.values_at(*column_names)
    end
  end
end
end

