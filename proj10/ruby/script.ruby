Script started on Sun Jun 24 16:12:31 2018
[?1034hbash-3.2$ cat Bird.rb
# Bird.rb | Defines a Bird superclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
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

  def movement
    'moved'
  end

  def print
    puts name + className + " just " + movement + ' and said ' + call
  end


  
end
bash-3.2$ cat Birds.rb
# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin
# Date: 4/25/18
######################################################

require './Bird.rb'
require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi'
require './FlyingBird.rb'
require './WalkingBird.rb'

puts "\nWelcome to the Bird Park!\n\n"

bird0 = Bird.new "Hawkeye"
bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Lillia"
bird4.print

bird5 = Ostrich.new "Ostrichy"
bird5.print

bird6 = Kiwi.new "Kiwiewy"
bird6.print

puts "\n\n"
bash-3.2$ cat Duck.rb
# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

  def call
    'Squaaaak'
  end

end
bash-3.2$ cat FlyingBird.rb
# FlyingBird.rb | Defines a FlyingBird subclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################

class FlyingBird < Bird

  def movement
    'Flew'
  end

end
bash-3.2$ cat Goose.rb
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/21/18
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

  def call
    'Quack'
  end

end
bash-3.2$ cat Kiwi.rb
# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################


require './WalkingBird.rb'

class Kiwi < FlyingBird

  def call
    'E-lisp sucks chirp chirp !'
  end

end
bash-3.2$ cat Ostrich.rb
# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################


require './WalkingBird.rb'

class Ostrich < FlyingBird

  def call
    'Snork !'
  end

end
bash-3.2$ cat Owl.rb
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################


require './FlyingBird.rb'

class Owl < FlyingBird

  def call
    'Whoooooo!'
  end

end
bash-3.2$ cat Penguin.e[Krb
# Penguin.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/2t/18
####################################################


require './WalkingBird.rb'

class Penguin < FlyingBird

  def call
    'HUUUUHHH HUUUUH !'
  end

end
bash-3.2$ cat WalkingBird.rb
# WalkingBird.rb | Defines a WalkingBird subclass 
#   to be extended by specific bird sub-classes.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Gavin Martin 
# Date: 4/25/18
####################################################

class WalkingBird < Bird

  def movement
    'walked'
  end
end
bash-3.2$ ruby Birds.rb

Welcome to the Bird Park!

HawkeyeBird just moved and said Squaaaaaaawk!
DonaldDuck just Flew and said Squaaaak
MotherGoose just Flew and said Quack
WoodseyOwl just Flew and said Whoooooo!
LilliaPenguin just Flew and said HUUUUHHH HUUUUH !
OstrichyOstrich just Flew and said Snork !
KiwiewyKiwi just Flew and said E-lisp sucks chirp chirp !


bash-3.2$ exit

Script done on Sun Jun 24 16:13:08 2018
