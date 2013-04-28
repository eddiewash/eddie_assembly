 # == Schema Information
#
# Table name: programs
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  date                :date
#  description         :string(255)
#

class Program < ActiveRecord::Base
  attr_accessible :date, :name, :avatar, :description
  has_attached_file :avatar, :styles => { :medium => "800x800>", :thumb => "300x300>" }
  has_many :instances
  has_many :students, :through => :instances
  validates_presence_of :avatar
  validates_presence_of :description
end