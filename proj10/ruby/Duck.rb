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
