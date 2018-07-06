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
