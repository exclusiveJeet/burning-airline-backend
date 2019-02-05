# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Flight.destroy_all
Plane.destroy_all
Reservation.destroy_all

# Plane Table Data Feeding
p1 = Plane.create :name => "B737" , :row => 12, :col => 6 
p2 = Plane.create :name => "B717" , :row => 12, :col => 5 
p3 = Plane.create :name => "B747" , :row => 12, :col => 9 
p4 = Plane.create :name => "A380" , :row => 15, :col => 10
puts "Created #{Plane.all.length} planes"

# Flight Table Data Feeding
f1 = Flight.create :f_no => 23 , :date => '07/02/2019' , :origin => 'SYD' , :destination => 'MEL'
f2 = Flight.create :f_no => 22 , :date => '07/02/2019' , :origin => 'MEL' , :destination => 'SYD'
f3 = Flight.create :f_no => 301 , :date => '08/02/2019' , :origin => 'DEL' , :destination => 'SYD'
f4 = Flight.create :f_no => 302 , :date => '09/02/2019' , :origin => 'SYD' , :destination => 'DEL'
f5 = Flight.create :f_no => 101 , :date => '07/02/2019' , :origin => 'JFK' , :destination => 'SFO'
f6 = Flight.create :f_no => 102 , :date => '07/02/2019' , :origin => 'SFO' , :destination => 'JFK'
f7 = Flight.create :f_no => 401 , :date => '08/02/2019' , :origin => 'SYD' , :destination => 'BRS'
f8 = Flight.create :f_no => 402 , :date => '09/02/2019' , :origin => 'BRS' , :destination => 'SYD'
puts "Created #{Flight.all.length} flights"



# User Table Data Feeding
User.destroy_all
u1 = User.create :name => 'Inder'
u2 = User.create :name => 'David'
u3 = User.create :name => 'Arun'
puts "Created #{User.all.length} users"



# Reservation Table Data Feeding

r1 = Reservation.create :seat => '3A' 
r2 = Reservation.create :seat => '1B'
r3 = Reservation.create :seat => '5C'
r4 = Reservation.create :seat => '8D'
puts "Created #{Reservation.all.length} reservations"




# ----------------------------------------------------------------------
# Joins Plane + Flight

p1.flights << f1 << f2
p2.flights << f7 << f8
p3.flights << f3 << f4
p4.flights << f5 << f6


#Join Flight + Reservation

f1.reservations << r3
f2.reservations << r2
f3.reservations << r1 << r4


# Join User + Reservation

u1.reservations << r1
u2.reservations << r2 << r4
u3.reservations << r3

# MultiJoin not working for Reservation
