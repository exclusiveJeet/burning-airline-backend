# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
    has_many :reservations, :dependent => :destroy
    has_many :flights, :through => :reservations
end
