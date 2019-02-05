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

class Flight < ApplicationRecord
  belongs_to :plane , :optional => true

  has_many :reservations, :dependent => :destroy
  has_many :users, :through => :reservations
end
