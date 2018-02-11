Script started on Fri Feb  9 09:54:00 2018
[?1034hbash-3.2$ cat year_ode[K[K[Kcodes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

#  Replace this line with the definition of function yearCode() 
def yearCode year
    if year =~ /freshman/
        1
    elsif year =~ /sophomore/
        2
    elsif year =~ /junior/
        3
    elsif year =~ /senior/
        4
    else 
        0
    end
end

if __FILE__ == $0
   print "Enter the year: "
   year = gets
   print "Numeric code is: "
   puts yearCode(year)
end

bash-3.2$ ruby year_codes.rb
Enter the year: 1
Numeric code is: 0
bash-3.2$ ruby year_codes.rb
Enter the year: freshman
Numeric code is: 1
bash-3.2$ ruby year_codes.rb
Enter the year: sophomore
Numeric code is: 2
bash-3.2$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
bash-3.2$ ruby year_codes.rb
Enter the year: senior
Numeric code is: 4
bash-3.2$ ruby year_codes.rb
Enter the year: clown
Numeric code is: 0
bash-3.2$ exit

Script done on Fri Feb  9 09:54:34 2018
