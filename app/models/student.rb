# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  attending  :boolean          default(FALSE)
#

class Student < ActiveRecord::Base
  attr_accessible :name, :attending
  has_many :instances
  has_many :programs, :through => :instances
end
