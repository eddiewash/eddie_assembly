# == Schema Information
#
# Table name: instances
#
#  id         :integer          not null, primary key
#  student_id :integer
#  program_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Instance < ActiveRecord::Base
	attr_accessible :program_id, :student_id
	belongs_to :program
	belongs_to :student
end
