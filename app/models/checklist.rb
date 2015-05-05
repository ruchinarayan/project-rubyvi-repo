# == Schema Information
#
# Table name: checklists
#
#  id         :integer          not null, primary key
#  uid        :string
#  unhp       :boolean
#  honexpju   :boolean
#  honexpse   :boolean
#  honthese   :boolean
#  gpa        :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Checklist < ActiveRecord::Base
end
