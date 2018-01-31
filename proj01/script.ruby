Script started on Wed Jan 31 14:47:42 2018
[?1034hbash-3.2$ cat rectangle_area.rb
cat: rectangle_area.rb: No such file or directory
bash-3.2$ cat rectangle_area.rbprectangle_area.rb[C[C[C[C[C[C[C[C[C[C[C[C[C[C[C[Crectangle_area.rborectangle_area.rbjrectangle_area.rb0rectangle_area.rb1rectangle_area.rb/rectangle_area.rb
#! /usr/bin/ruby
# rectangle_area.rb computes the area of a rectangle given its width and height
# 
# Input: the width and height of a rectangle
# Precondition: the width and height are not negative
# Output: the area of the rectangle.
#
# By: Shion Fukuzawa
# Date: January 31, 2018
###############################################################

# function rectangleArea returns a rectangle's area, given its width and height
# Parameters: w, a number
# Parameters: h, a number
# Precondition: w, h > 0.
# Returns: the area of a rectangle whose width is w and height is h.
def rectangleArea(w, h)
    w * h
end

if __FILE__ == $0
   puts "To compute the area of a rectangle,"
   print " enter its width: "
   width = gets.chomp.to_f
   print " enter its height: "
   height = gets.chomp.to_f
   print "The circle's area is: "
   puts rectangleArea(width, height)
end
bash-3.2$ ruby rectangle_area.rb
ruby: No such file or directory -- rectangle_area.rb (LoadError)
bash-3.2$ ruby rectangle_area.rbprectangle_area.rb[Crectangle_area.rborectangle_area.rbjrectangle_area.rb0rectangle_area.rb1rectangle_area.rb/rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 3
 enter its height: 5
The circle's area is: 15.0
bash-3.2$ ruby proj01/rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 8
 enter its height: 4
The circle's area is: 32.0
bash-3.2$ ruby proj01/rectangle_area.rb
To compute the area of a rectangle,
 enter its width: 3.14
 enter its height: 2.71
The circle's area is: 8.5094
bash-3.2$ exit

Script done on Wed Jan 31 14:48:36 2018
