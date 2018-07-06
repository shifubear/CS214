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
