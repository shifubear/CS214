# temperature.rb is the class Temperature and it contains all operations
#
# By: Shion Fukuzawa, for CS 214 at Calvin College
# Date: June 23, 2018
#########################################################################


module Temperatures

  class Temperature

    def initialize(myDegrees, myScale)
      @myDegrees, @myScale = myDegrees, myScale
      checkIfValid(myDegrees, myScale)
    end
    
    attr_reader :myDegrees, :myScale
    attr_accessor :myDegrees, :myScale

    
    #This function defines what the output is so it can be printed 
    def output
      (self.myDegrees.to_f).to_s + " " + self.myScale.to_s
    end

    #Print allows the user to print the temperature for visibility 
    def print
      puts self.output
    end

#ReadInput takes in user values and modifies temperature with input
    def readInput
      puts 'Please enter a valid Temperature: '
      input = gets.to_s
      anArray = input.split(' ')
      self.myDegrees = anArray[0].to_f
      self.myScale = anArray[1].upcase
      checkIfValid(self.myDegrees, self.myScale)
    end

    #CONVERSIONS

    #converts temperature object to fahreheit, modifies degrees and scales
    def convertFahrenheit
      case self.myScale
      when 'K'
        self.myDegrees = (self.myDegrees * (9.0/5.0) - 459.67)
        self.myScale = 'F'
      when 'C'
        self.myDegrees = ((self.myDegrees * 1.8) + 32.0)
        self.myScale = 'F'
      end
      
    end

    #converts temperature object to celsius, modifies degrees and scales
    def convertCelsius
      case self.myScale
      when 'K'
        self.myDegrees = (self.myDegrees - 273.15)
        self.myScale = 'C'
      when 'F'
        self.myDegrees = ((self.myDegrees - 32.0) * (5.0/9.0))
        self.myScale = 'C'
      end
    end

    #converst temperature object to kelvin, modifies degrees and scales
    def convertKelvin
      case self.myScale
      when 'F'
        self.myDegrees = (self.myDegrees + 459.67) * (5.0/9.0)
        self.myScale = 'K'
      when 'C'
        self.myDegrees = (self.myDegrees + 273.15)
        self.myScale = 'K'
      end
    end

    # ADJUSTMENTS 

    #Upper raises temperature by inputted # of degrees 
    def upper( degrees)
      newDegrees = self.myDegrees + degrees
      checkIfValid(newDegrees, self.myScale)
      self.myDegrees = newDegrees
    end

    #lower lowers temperature by inputted # of degrees 
    def lower( degrees )
      newDegrees = self.myDegrees - degrees
      checkIfValid(newDegrees, self.myScale)
      self.myDegrees = newDegrees
    end


    #RELATIONAL OPERATORS

    #equality operator returns true if both temperatures are equal in degrees
    def ==( temperature)
      if temperature.myScale != self.myScale
        case self.myScale
        when 'K'
          temperature.convertKelvin
        when 'C'
          temperature.convertCelsius
        when 'F'
          temperature.convertFahrenheit
        end
      end
      
      if self.myDegrees == temperature.myDegrees
        return true
      else
        return false
      end
    end


# Less than operator returns true if left Temperature's degrees are less than right temperatures degrees
    def <( temperature )
      if temperature.myScale != self.myScale
        case self.myScale
        when 'K'
          temperature.convertKelvin
        when 'C'
          temperature.convertCelsius
        when 'F'
          temperature.convertFahrenheit
        end
      end

      if self.myDegrees < temperature.myDegrees
        return true
      else
        return false
      end
    end


	# checkIfValid checks the degrees and scale and returns true if its a valid scale and if temperatures aren't below absolute 0
    def checkIfValid(degrees, scale)
      case self.myScale
      when 'K'
        if degrees.to_f < 0.0
          raise RangeError.new( "Kelvin can't be below 0")
        else
          return true
        end
      when 'C'
        if degrees.to_f < -273.15
          raise RangeError.new( "Celsius can't be below -273.15")
        else
          return true
        end
      when 'F'
        if degrees.to_f < -459.67
          raise RangeError.new( "Fahrenheit can't be below -459.67")
        else
          return true
        end
          

      end
      end

            
  end  # end package 
end  # end module 

