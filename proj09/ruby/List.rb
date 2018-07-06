# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Shion Fukuzawa, CS 214 at Calvin College. 
# Date: June 23, 2018
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

  def initialize()
    @first = nil
    @last = nil
    @length = 0
  end
  
   # initialize a List to be empty
   # Postcondition: first == nil and last == nil and length == 0

   # Replace this line with a List constructor definition


   attr_reader :length

   # Replace this line with a statement to define a 'length' reader method


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print
     temp = @first
     while !temp.nil?
       printf " #{temp.value}"
       temp = temp.next
     end
   end


     
   # find my maximum item
   # Return: my maximum item

     def max
       temp = @first
       maxValue = -9999999
       while !temp.nil?
         if temp.value > maxValue
           maxValue = temp.value
         end
         temp = temp.next
       end
       return maxValue
     end


     # search: find the item given as a variable
     # recieve: aValue (the item to search for)
     # return's the position of aValue in list 
     
     def search(aValue)
       position = -1
       index = 0
       temp = @first
       while !temp.nil?
         if aValue == temp.value
           position = index
           return position
         end
         index = index + 1
         temp = temp.next
       end
       return position
     end
     
end

class Node
      def initialize(item, link)
        @value = item
         @next = link
      end
      attr_reader :value
      attr_accessor :next
end
 
