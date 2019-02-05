# == Schema Information
#
# Table name: flights
#
#  id          :bigint(8)        not null, primary key
#  f_no        :integer
#  date        :text
#  origin      :text
#  destination :text
#  plane_id    :bigint(8)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class FlightTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
