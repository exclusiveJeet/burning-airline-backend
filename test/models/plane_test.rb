# == Schema Information
#
# Table name: planes
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  row        :integer
#  col        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PlaneTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
