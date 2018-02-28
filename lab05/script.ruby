Script started on Wed Feb 28 09:01:25 2018
[?1034hbash-3.2$ cat split.rb
# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
# Date: February 28, 2018
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

# Replace this line with the definition of split()
def split(aString, pos)
  [aString[0, pos], aString[pos..aString.length]]
end

def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main
bash-3.2$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 0
The first part is: 
and the second part is: hello
bash-3.2$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 3
The first part is: hel
and the second part is: lo
bash-3.2$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 5
The first part is: hello
and the second part is: 
bash-3.2$ exit

Script done on Wed Feb 28 09:02:02 2018
