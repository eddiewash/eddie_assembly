# == Schema Information
#
# Table name: users
#
#  id            :integer          not null, primary key
#  password_salt :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  password_hash :string(255)
#  username      :string(255)
#  date          :string(255)
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
