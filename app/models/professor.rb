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
end
