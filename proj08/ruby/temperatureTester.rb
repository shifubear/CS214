# temperatureTester.rb is the class tester and table maker for Temperature
#
# By: Shion Fukuzawa, for CS 214 at Calvin College
# Date: June 23, 2018
##############################################################


require 'test/unit/assertions'
require './Temperatures.rb'
include Test::Unit::Assertions

def testTemperature

  #demonstrates the intializer works 
  temp1 = Temperatures::Temperature.new(104, 'F')
  temp2 = Temperatures::Temperature.new(40, 'C')
  temp3 = Temperatures::Temperature.new(50, 'K')


  #Testing equality 
  assert temp1 == temp2, "equality failed"
  assert !(temp1 == temp3), "equality failed"

  assert !(temp1 < temp3), "less than operator failed for temperature"
  assert temp3 < temp1, "less than operator failed for temperature"

  temp3.convertKelvin
  temp3.lower(50)     # with this, the temperature should be absolute 0
  temp3.convertCelsius
  #temp3.lower(1)          # this should fail if uncommented 
  temp3.convertFahrenheit  
  #temp3.lower(1)         # this should fail if uncommented 


  puts ("All tests passed")

  puts (" Please enter the base Temperature ")
  baseTemperature = Temperatures::Temperature.new(0, 'F')
  baseTemperature.readInput

  puts (" Please enter the limit Temperature ")
  limitTemperature = Temperatures::Temperature.new(0, 'F')
  limitTemperature.readInput

  puts (" Please enter the step Value ")
  stepValue = gets.to_f
  
  thisScale = baseTemperature.myScale
  
  while baseTemperature < limitTemperature
    baseTemperature.convertFahrenheit
    baseTemperature.print


    baseTemperature.convertCelsius
    baseTemperature.print


    baseTemperature.convertKelvin
    baseTemperature.print

    if baseTemperature.myScale != thisScale
      if thisScale == 'C'
        baseTemperature.convertCelsius
      end
      if thisScale == 'F'
        baseTemperature.convertFahrenheit
      end
      if thisScale == 'K'
        baseTemperature.convertKelvin
      end
    end

    baseTemperature.upper(stepValue)
    puts('')
  end
  
  

end

testTemperature
