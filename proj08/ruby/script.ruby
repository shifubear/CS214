Script started on Sat Jun 23 17:37:44 2018
[?1034hbash-3.2$ cat Tes[Kmperatures.rb
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

bash-3.2$ te[K[Kcat temperatureTester.rb
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
bash-3.2$ ruby temperatureTester.rb
All tests passed
 Please enter the base Temperature 
Please enter a valid Temperature: 
0 F
 Please enter the limit Temperature 
Please enter a valid Temperature: 
100 C
 Please enter the step Value 
2.5
0.0 F
-17.77777777777778 C
255.3722222222222 K

2.499999999999943 F
-16.38888888888892 C
256.76111111111106 K

4.999999999999886 F
-15.000000000000064 C
258.1499999999999 K

7.4999999999998295 F
-13.611111111111207 C
259.5388888888888 K

9.999999999999773 F
-12.22222222222235 C
260.92777777777764 K

12.499999999999716 F
-10.833333333333492 C
262.3166666666665 K

14.999999999999659 F
-9.444444444444635 C
263.70555555555535 K

17.499999999999602 F
-8.055555555555777 C
265.0944444444442 K

19.999999999999545 F
-6.666666666666919 C
266.48333333333306 K

22.49999999999949 F
-5.277777777778062 C
267.8722222222219 K

24.99999999999943 F
-3.888888888889205 C
269.2611111111108 K

27.499999999999375 F
-2.5000000000003473 C
270.64999999999964 K

29.999999999999318 F
-1.1111111111114902 C
272.0388888888885 K

32.49999999999926 F
0.27777777777736723 C
273.42777777777735 K

34.999999999999204 F
1.6666666666662246 C
274.8166666666662 K

37.49999999999915 F
3.055555555555082 C
276.20555555555507 K

39.99999999999909 F
4.444444444443939 C
277.5944444444439 K

42.499999999999034 F
5.833333333332797 C
278.9833333333328 K

44.99999999999898 F
7.222222222221654 C
280.37222222222164 K

47.49999999999892 F
8.611111111110512 C
281.7611111111105 K

49.99999999999886 F
9.99999999999937 C
283.14999999999935 K

52.499999999998806 F
11.388888888888227 C
284.5388888888882 K

54.999999999998806 F
12.777777777777116 C
285.92777777777707 K

57.49999999999869 F
14.166666666665941 C
287.3166666666659 K

59.99999999999869 F
15.55555555555483 C
288.7055555555548 K

62.49999999999858 F
16.944444444443654 C
290.09444444444364 K

64.99999999999858 F
18.333333333332543 C
291.4833333333325 K

67.49999999999847 F
19.72222222222137 C
292.87222222222135 K

69.99999999999847 F
21.111111111110258 C
294.2611111111102 K

72.49999999999835 F
22.499999999999087 C
295.64999999999907 K

74.99999999999835 F
23.888888888887973 C
297.0388888888879 K

77.49999999999824 F
25.2777777777768 C
298.4277777777768 K

79.99999999999824 F
26.666666666665687 C
299.81666666666564 K

82.49999999999812 F
28.055555555554516 C
301.2055555555545 K

84.99999999999812 F
29.444444444443402 C
302.59444444444335 K

87.49999999999801 F
30.83333333333223 C
303.9833333333322 K

89.99999999999801 F
32.22222222222112 C
305.3722222222211 K

92.49999999999801 F
33.611111111110006 C
306.76111111111 K

94.99999999999801 F
34.9999999999989 C
308.1499999999989 K

97.49999999999801 F
36.388888888887784 C
309.53888888888775 K

99.99999999999801 F
37.77777777777668 C
310.92777777777667 K

102.49999999999801 F
39.16666666666556 C
312.3166666666655 K

104.9999999999979 F
40.55555555555439 C
313.7055555555544 K

107.4999999999979 F
41.94444444444328 C
315.09444444444324 K

109.99999999999778 F
43.33333333333211 C
316.4833333333321 K

112.49999999999778 F
44.72222222222099 C
317.87222222222096 K

114.99999999999767 F
46.11111111110982 C
319.2611111111098 K

117.49999999999767 F
47.49999999999871 C
320.64999999999867 K

119.99999999999756 F
48.888888888887536 C
322.0388888888875 K

122.49999999999756 F
50.27777777777642 C
323.4277777777764 K

124.99999999999744 F
51.66666666666525 C
324.81666666666524 K

127.49999999999744 F
53.055555555554136 C
326.2055555555541 K

129.99999999999733 F
54.444444444442965 C
327.59444444444296 K

132.49999999999733 F
55.83333333333185 C
328.9833333333318 K

134.99999999999721 F
57.22222222222068 C
330.37222222222067 K

137.49999999999721 F
58.611111111109565 C
331.7611111111095 K

139.9999999999971 F
59.999999999998394 C
333.1499999999984 K

142.4999999999971 F
61.38888888888728 C
334.53888888888724 K

144.999999999997 F
62.77777777777611 C
335.9277777777761 K

147.499999999997 F
64.166666666665 C
337.31666666666496 K

149.99999999999687 F
65.55555555555382 C
338.7055555555538 K

152.49999999999687 F
66.94444444444271 C
340.0944444444427 K

154.99999999999676 F
68.33333333333154 C
341.48333333333153 K

157.49999999999676 F
69.72222222222042 C
342.8722222222204 K

159.99999999999665 F
71.11111111110925 C
344.26111111110924 K

162.49999999999665 F
72.49999999999814 C
345.6499999999981 K

164.99999999999653 F
73.88888888888697 C
347.03888888888696 K

167.49999999999653 F
75.27777777777585 C
348.4277777777758 K

169.99999999999642 F
76.66666666666468 C
349.8166666666647 K

172.49999999999642 F
78.05555555555357 C
351.20555555555353 K

174.9999999999963 F
79.4444444444424 C
352.5944444444424 K

177.4999999999963 F
80.83333333333128 C
353.98333333333125 K

179.9999999999962 F
82.22222222222011 C
355.3722222222201 K

182.4999999999962 F
83.611111111109 C
356.76111111110896 K

184.99999999999608 F
84.99999999999783 C
358.1499999999978 K

187.49999999999608 F
86.38888888888671 C
359.5388888888867 K

189.99999999999596 F
87.77777777777554 C
360.92777777777553 K

192.49999999999596 F
89.16666666666443 C
362.3166666666644 K

194.99999999999585 F
90.55555555555325 C
363.70555555555325 K

197.49999999999585 F
91.94444444444214 C
365.0944444444421 K

199.99999999999574 F
93.33333333333097 C
366.48333333333096 K

202.49999999999574 F
94.72222222221986 C
367.8722222222198 K

204.99999999999562 F
96.11111111110868 C
369.2611111111087 K

207.49999999999562 F
97.49999999999757 C
370.64999999999753 K

209.9999999999955 F
98.8888888888864 C
372.0388888888864 K

bash-3.2$ ruby temperature [KTester.rb
All tests passed
 Please enter the base Temperature 
Please enter a valid Temperature: 
0 K
 Please enter the limit Temperature 
Please enter a valid Temperature: 
212 F
 Please enter the step Value 
20.0
-459.67 F
-273.15000000000003 C
-5.684341886080802e-14 K

-423.67000000000013 F
-253.1500000000001 C
19.999999999999886 K

-387.6700000000002 F
-233.15000000000012 C
39.99999999999986 K

-351.6700000000003 F
-213.15000000000018 C
59.9999999999998 K

-315.67000000000036 F
-193.1500000000002 C
79.99999999999977 K

-279.6700000000004 F
-173.15000000000023 C
99.99999999999974 K

-243.67000000000047 F
-153.15000000000026 C
119.99999999999972 K

-207.67000000000053 F
-133.1500000000003 C
139.9999999999997 K

-171.67000000000058 F
-113.15000000000033 C
159.99999999999966 K

-135.67000000000064 F
-93.15000000000036 C
179.9999999999996 K

-99.6700000000007 F
-73.15000000000039 C
199.9999999999996 K

-63.6700000000007 F
-53.15000000000039 C
219.9999999999996 K

-27.670000000000698 F
-33.15000000000039 C
239.9999999999996 K

8.329999999999302 F
-13.150000000000388 C
259.9999999999996 K

44.3299999999993 F
6.849999999999612 C
279.9999999999996 K

80.3299999999993 F
26.849999999999614 C
299.9999999999996 K

116.3299999999993 F
46.84999999999962 C
319.9999999999996 K

152.3299999999993 F
66.84999999999961 C
339.9999999999996 K

188.3299999999993 F
86.84999999999961 C
359.9999999999996 K

bash-3.2$ exit

Script done on Sat Jun 23 17:38:28 2018
