Script started on Sun Jun 24 16:01:23 2018
[?1034hbash-3.2$ cat Bird.rb Duck.rb Goose.rb Owl.rb Birds.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: June 24, 2018
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call
    'Squaaaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + className + " says " + call
  end


  
end
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: June 24, 2018
####################################################

require './Bird.rb'

class Duck < Bird

  def call
    'Squaaaak'
  end

end
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: June 24, 2018
####################################################

require './Bird.rb'

class Goose < Bird

  def call
    'Quack'
  end

end
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: June 24, 2018
####################################################


require './Bird.rb'

class Owl < Bird

  def call
    'Whoooooo!'
  end

end
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, for CS 214 at Calvin College.
# Date: June 24, 2018
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

puts "\n\n"
bash-3.2$ ruby Birds.rb

Welcome to the Bird Park!

HawkeyeBird says Squaaaaaaawk!
DonaldDuck says Squaaaak
MotherGoose says Quack
WoodseyOwl says Whoooooo!


bash-3.2$ exit

Script done on Sun Jun 24 16:01:41 2018
