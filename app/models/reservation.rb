# == Schema Information
#
# Table name: reservations
#
#  id         :bigint(8)        not null, primary key
#  seat       :text
#  flight_id  :bigint(8)
#  user_id    :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Reservation < ApplicationRecord
  belongs_to :flight, :optional => true
  belongs_to :user, :optional => true

end
