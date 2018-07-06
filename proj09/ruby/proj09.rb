# max.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, CS 214 at Calvin College. 
# Date: June 23, 2018

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(66).append(77).append(88).append(55).append(22)

list1.print 
puts
puts "Maximum of list1: #{list1.max}"

list2.print 
puts
puts "Maximum of list2: #{list2.max}"

list3.print 
puts
puts "Maximum of list3: #{list3.max}"

list4.print
puts
puts "Maximum of list4: #{list4.max}"

puts list1.search(99)
puts list2.search(99)
puts list3.search(99)
puts list4.search(99)
