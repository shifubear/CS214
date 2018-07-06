Script started on Sat Jun 23 16:59:42 2018
[?1034hbash-3.2$ javac Temperta[K[Kature.java TemperatureTester.java
bash-3.2$ Temp[K[K[K[Kcat Temperature.java
/* Temperature.java implements class Temperature.
 * By: Shion Fukuzawa, for CS 214 at Calvin College 
 * Date: June 23, 2018
 ************************************************************/
import java.util.Scanner;


// the Name class appears outside of the rest of the program
class Temperature {

	// Member variables
	private double myDegrees;
	private char myScale;

  	// Explicit constructor  
    public Temperature(double Degrees, char Scale) {
		checkIfValid(Degrees, Scale);
		myDegrees = Degrees;
		myScale = Scale;
  	}

    // String constructor
    public Temperature(String input) {
		String[] parts = input.split(" ");
        myDegrees = Double.parseDouble(parts[0]);
        myScale = parts[1].charAt(0);
		checkIfValid(myDegrees, myScale);
    }

	// CheckIfValid 
	// Checks if the degrees are valid for the given scales
    // Returns true if valid temperature and scale
    public boolean checkIfValid(double degrees, char scale) {
		switch(scale) {
			case 'K':
			case 'k':
			if(degrees < 0){
				throw new
				java.lang.RuntimeException("Cannot go below 0 in Kelvin");
			}
			else{ return true; }
			case 'F':
			case 'f':
			if(degrees > -459.67){
				return true;
				} else{
			throw new
				java.lang.RuntimeException("Cannot go below -459.67 in Fahrenheit");}
			case 'C':
			case 'c':
			if(degrees < -273.15){
				throw new
				java.lang.RuntimeException("Cannot go below -273.15 in Celsius");
			}
				else{ return true; }
		default:
			throw new
			java.lang.RuntimeException("Your scale was invalid");
		}
    }
	

	// GETTERS: 
	public final double getDegrees() {
		return myDegrees;
	}
	public final char getScale() {
		return myScale;
	}


    // CONVERTER OPERATIONS:

    public void convertFahrenheit() {
		switch(myScale) {
			case 'K':
			case 'k':
			myDegrees =  (myDegrees * (9.0/5.0) - 459.67);
				myScale = 'F';
			break;
			case 'F':
			case 'f':
			break;
			case 'C':
			case 'c':
			myDegrees = ((myDegrees * 1.8) + 32.0);
			myScale = 'F';
				break;
		}
    }

    public void convertCelsius() {
		switch(myScale) {
			case 'K':
			case 'k':
			myDegrees = (myDegrees - 273.15);
				myScale = 'C';
			break;
			case 'F':
			case 'f':
			myDegrees = ((myDegrees - 32.0) * (5.0/9.0));
			myScale = 'C';
			break;
			case 'C':
			case 'c':
				break;
		}
    }

    public void convertKelvin() {
		switch(myScale) {
			case 'K':
			case 'k':
			break;
			case 'F':
			case 'f':
				myDegrees = (myDegrees + 459.67) * (5.0/9.0);
			myScale = 'K';
			break;
			case 'C':
			case 'c':
			myDegrees = (myDegrees + 273.15);
			myScale = 'K';
				break;
		}
    }

    // String method 
    public final String toString() {
		return myDegrees + " " + myScale;
    }


    // ADJUSTMENT OPERATIONS

    // Raises temperature by degrees amount. 
    public final void raise( double degrees){
		double newDegrees = myDegrees + degrees;
		checkIfValid(newDegrees, myScale);
		myDegrees = newDegrees;
    }

    // Lowers temperature by degrees amount 
    public final void lower( double degrees){
		double newDegrees = myDegrees - degrees;
		checkIfValid(newDegrees, myScale);
		myDegrees = newDegrees;
    }


	// OPERATORS: 

    //Equals operator that returns true if both sides are equal in degrees 
    public boolean equals(Temperature temp){
		if(temp.getScale() != myScale){
				if(myScale == 'C' || myScale == 'c'){
				temp.convertCelsius();
			}
			if(myScale == 'F' || myScale == 'f'){
				temp.convertFahrenheit();
			}
			if(myScale == 'K' || myScale == 'k'){
				temp.convertKelvin();
			}
		}
		
		if(myDegrees == temp.getDegrees()){
			//System.out.println(myDegrees + "  " + temp.getDegrees());
			return true;
		} else {
			return false;
		}
    }

    //less than opertion that returns true if left operator is less than right
    public boolean lessThan(Temperature temp){
		if(temp.getScale() != myScale){   
			if(myScale == 'C' || myScale == 'c'){
			temp.convertCelsius();
			}
			if(myScale == 'F' || myScale == 'f'){
			temp.convertFahrenheit();
			}
			if(myScale == 'K' || myScale == 'k'){
			temp.convertKelvin();
			}
		}
		if(myDegrees < temp.getDegrees()){
			return true;
		} else {
			return false;
		}
    }
}

    


bash-3.2$ cat TemperatureTester.java
/* TemperatureTester.java implements class TemperatureTester.
 * By: Shion Fukuzawa, for CS 214 at Calvin College 
 * Date: June 23, 2018
 ************************************************************/
import java.util.Scanner;

public class TemperatureTester  
{
  public static void main(String[] args)
  {
      Temperature aTemp = new Temperature(98.5, 'F');

      assert aTemp.getDegrees() == (98.5);
      assert aTemp.getScale() == ('F');
      //System.out.println(aTemp);

      //testing convert from fahrenheit to fahrenheit
      aTemp.convertFahrenheit();
      assert aTemp.getDegrees() == (98.5);
      assert aTemp.getScale() == 'F';
      //System.out.print("This should convert 98.5 F to Fahrenheit: ");
      //System.out.println(aTemp);

      //testing convert from fahrenheit to celsius
      aTemp.convertCelsius();
      assert aTemp.getDegrees() == (36.94444444444444);
      assert aTemp.getScale() == 'C';
      // System.out.print("This should convert 98.5 F to Celsius: ");
      //System.out.println(aTemp);
      aTemp.convertFahrenheit();

      
      //testing convert from fahrenheit to Kelvin
      aTemp.convertKelvin();
      assert aTemp.getDegrees() == (310.0944444444445);
      assert aTemp.getScale() == 'K';
      // System.out.print("This should convert 98.5 F to Kelvin ");
      //System.out.println(aTemp);
      

      // This is testing the input as a unifed string option
      Temperature aTemp2 = new Temperature("32.3 c");
      assert aTemp2.getDegrees() == (32.3);
      assert aTemp2.getScale() == ('c');
      // System.out.println(aTemp2);

      //testing convert from Celsius to fahrenheit
      aTemp2.convertFahrenheit();
      assert aTemp2.getDegrees() == (90.13999999999999);
      assert aTemp2.getScale() == 'F';
      // System.out.print("This should convert 32.3 Celsius to Fahrenheit: ");
      // System.out.println(aTemp2);
      aTemp2.convertCelsius();

      //testing convert from Celsius to celsius
      aTemp2.convertCelsius();
       assert aTemp2.getDegrees() == (32.3);
      assert aTemp2.getScale() == 'C';
      // System.out.print("This should convert 32.3 Celsius to Celsius: ");
      //System.out.println(aTemp2);
      aTemp2.convertCelsius();

      
      //testing convert from Celsius to Kelvin
      aTemp2.convertKelvin();
      assert aTemp2.getDegrees() == (305.45);
      assert aTemp2.getScale() == 'K';
      //System.out.print("This should convert 32.3 Celsius to Kelvin: ");
      //System.out.println(aTemp2);



      
      Temperature aTemp3 = new Temperature(295, 'K');
      assert aTemp3.getDegrees() == (295);
      assert aTemp3.getScale() == ('K');
      //System.out.println(aTemp3);

      //testing convert from Kelvin to fahrenheit
      aTemp3.convertFahrenheit();
      assert aTemp3.getDegrees() == (71.32999999999998);
      assert aTemp3.getScale() == 'F';
      //System.out.print("This should convert 295 Kelvin to Fahrenheit: ");
      //System.out.println(aTemp3);
      aTemp3.convertKelvin();
      

      //testing convert from Kelvin to celsius
      aTemp3.convertCelsius();
      assert aTemp3.getDegrees() == (21.850000000000023);
      assert aTemp3.getScale() == 'C';
      // System.out.print("This should convert 295 Kelvin to Celsius: ");
      //System.out.println(aTemp3);
       aTemp3.convertKelvin();

      
      //testing convert from Kelvin to Kelvin
      aTemp3.convertKelvin();
      assert aTemp3.getDegrees() == (295);
      assert aTemp3.getScale() == 'K';
      //System.out.print("This should convert 295 Kelvin to Kelvin ");
      //System.out.println(aTemp3);

      
      //Tests userInput into temperature
      
      /*
      Scanner input = new Scanner(System.in);
      System.out.println("Please enter the Temperature");
      String userInput = input.nextLine();
      Temperature aTemp4 = new Temperature(userInput);
      */


      // TESTING RELATIONAL OPERATORS

      //Testing equality operator 
      Temperature aTemp4 = new Temperature(50, 'f');
      Temperature aTemp5 = new Temperature(10, 'C');
      Temperature aTemp6 = new Temperature(283.15, 'K');
      Temperature aTemp7 = new Temperature(104, 'F');
      Temperature aTemp8 = new Temperature(40, 'C');
      Temperature aTemp9 = new Temperature(313.15, 'K');
      //testing if it works accross the scales 
      assert(aTemp5.equals(aTemp4));
      assert(aTemp5.equals(aTemp6));
      assert(aTemp4.equals(aTemp4));
      assert(aTemp5.equals(aTemp6));
      assert(aTemp4.equals(aTemp6));
      assert(aTemp7.equals(aTemp8));
      assert!(aTemp6.equals(aTemp8));
      assert!(aTemp9.equals(aTemp4));

      //Testing lessThan operator
      assert(aTemp4.lessThan(aTemp7));
      assert(aTemp5.lessThan(aTemp8));
      assert(aTemp6.lessThan(aTemp9));
      //Assert that its not less than
      assert!(aTemp9.lessThan(aTemp5));
      assert!(aTemp8.lessThan(aTemp6));
      assert!(aTemp7.lessThan(aTemp4));


      Temperature aTemp10 = new Temperature(32, 'F');
      assert(aTemp10.getDegrees() == 32);
      aTemp10.raise(36);
      assert(aTemp10.getDegrees() == 68);
      Temperature aTemp11 = new Temperature(55, 'C');
      assert(aTemp11.getDegrees() == 55);
      aTemp11.raise(10);
      assert(aTemp11.getDegrees() == 65);

      //Testing the lower function 
      aTemp11.lower(42);
      assert(aTemp11.getDegrees() == 23);
      aTemp10.lower(69);
      assert(aTemp10.getDegrees() == -1);
      
      System.out.println("All tests passed!");

      

      Scanner input = new Scanner(System.in);
      System.out.println("Please enter the base Temperature");
      String baseTemp = input.nextLine();
      Temperature baseTemperature = new Temperature(baseTemp);

      System.out.println("Please enter the limit Temperature");
      String limitTemp = input.nextLine();
      Temperature limitTemperature = new Temperature(limitTemp);

      System.out.println("Please enter the stepValue");
      String stepValueInput = input.nextLine();
      double stepValue = Double.parseDouble(stepValueInput);

      
      char thisScale = baseTemperature.getScale();

      //while loop that iterates from basetemp to limittemp and outputs all variables along the way through stepValue 
      while(baseTemperature.lessThan(limitTemperature)){
	  
	  baseTemperature.convertFahrenheit();  //regardless convert to fahrenheit, then to celsius, and Kelvin
	  System.out.print(baseTemperature);

	  System.out.print("  ");

	  baseTemperature.convertCelsius();
	  System.out.print(baseTemperature);

	  System.out.print("  ");

	  baseTemperature.convertKelvin();
	  System.out.println(baseTemperature);

	  if(baseTemperature.getScale() != thisScale){    // this if statment brings basetemperature back to 
	      if(thisScale == 'C' || thisScale == 'c'){   // its oritinal 
		  baseTemperature.convertCelsius();
	      }
	      if(thisScale == 'F' || thisScale == 'f'){
		  baseTemperature.convertFahrenheit();
	      }
	      if(thisScale == 'K' || thisScale == 'k'){
		  baseTemperature.convertKelvin();
	      }
	  }
	
	  baseTemperature.raise(stepValue); //Calls raise to raise it by the stepvalue 
      }
  }
}
bash-3.2$ java Temperatr[KureTester
All tests passed!
Please enter the base Temperature
0 F
Please enter the limit Temperature
100 C
Please enter the stepValue
2.5
0.0 F  -17.77777777777778 C  255.3722222222222 K
2.499999999999943 F  -16.38888888888892 C  256.76111111111106 K
4.999999999999886 F  -15.000000000000064 C  258.1499999999999 K
7.4999999999998295 F  -13.611111111111207 C  259.5388888888888 K
9.999999999999773 F  -12.22222222222235 C  260.92777777777764 K
12.499999999999716 F  -10.833333333333492 C  262.3166666666665 K
14.999999999999659 F  -9.444444444444635 C  263.70555555555535 K
17.499999999999602 F  -8.055555555555777 C  265.0944444444442 K
19.999999999999545 F  -6.666666666666919 C  266.48333333333306 K
22.49999999999949 F  -5.277777777778062 C  267.8722222222219 K
24.99999999999943 F  -3.888888888889205 C  269.2611111111108 K
27.499999999999375 F  -2.5000000000003473 C  270.64999999999964 K
29.999999999999318 F  -1.1111111111114902 C  272.0388888888885 K
32.49999999999926 F  0.27777777777736723 C  273.42777777777735 K
34.999999999999204 F  1.6666666666662246 C  274.8166666666662 K
37.49999999999915 F  3.055555555555082 C  276.20555555555507 K
39.99999999999909 F  4.444444444443939 C  277.5944444444439 K
42.499999999999034 F  5.833333333332797 C  278.9833333333328 K
44.99999999999898 F  7.222222222221654 C  280.37222222222164 K
47.49999999999892 F  8.611111111110512 C  281.7611111111105 K
49.99999999999886 F  9.99999999999937 C  283.14999999999935 K
52.499999999998806 F  11.388888888888227 C  284.5388888888882 K
54.999999999998806 F  12.777777777777116 C  285.92777777777707 K
57.49999999999869 F  14.166666666665941 C  287.3166666666659 K
59.99999999999869 F  15.55555555555483 C  288.7055555555548 K
62.49999999999858 F  16.944444444443654 C  290.09444444444364 K
64.99999999999858 F  18.333333333332543 C  291.4833333333325 K
67.49999999999847 F  19.72222222222137 C  292.87222222222135 K
69.99999999999847 F  21.111111111110258 C  294.2611111111102 K
72.49999999999835 F  22.499999999999087 C  295.64999999999907 K
74.99999999999835 F  23.888888888887973 C  297.0388888888879 K
77.49999999999824 F  25.2777777777768 C  298.4277777777768 K
79.99999999999824 F  26.666666666665687 C  299.81666666666564 K
82.49999999999812 F  28.055555555554516 C  301.2055555555545 K
84.99999999999812 F  29.444444444443402 C  302.59444444444335 K
87.49999999999801 F  30.83333333333223 C  303.9833333333322 K
89.99999999999801 F  32.22222222222112 C  305.3722222222211 K
92.49999999999801 F  33.611111111110006 C  306.76111111111 K
94.99999999999801 F  34.9999999999989 C  308.1499999999989 K
97.49999999999801 F  36.388888888887784 C  309.53888888888775 K
99.99999999999801 F  37.77777777777668 C  310.92777777777667 K
102.49999999999801 F  39.16666666666556 C  312.3166666666655 K
104.9999999999979 F  40.55555555555439 C  313.7055555555544 K
107.4999999999979 F  41.94444444444328 C  315.09444444444324 K
109.99999999999778 F  43.33333333333211 C  316.4833333333321 K
112.49999999999778 F  44.72222222222099 C  317.87222222222096 K
114.99999999999767 F  46.11111111110982 C  319.2611111111098 K
117.49999999999767 F  47.49999999999871 C  320.64999999999867 K
119.99999999999756 F  48.888888888887536 C  322.0388888888875 K
122.49999999999756 F  50.27777777777642 C  323.4277777777764 K
124.99999999999744 F  51.66666666666525 C  324.81666666666524 K
127.49999999999744 F  53.055555555554136 C  326.2055555555541 K
129.99999999999733 F  54.444444444442965 C  327.59444444444296 K
132.49999999999733 F  55.83333333333185 C  328.9833333333318 K
134.99999999999721 F  57.22222222222068 C  330.37222222222067 K
137.49999999999721 F  58.611111111109565 C  331.7611111111095 K
139.9999999999971 F  59.999999999998394 C  333.1499999999984 K
142.4999999999971 F  61.38888888888728 C  334.53888888888724 K
144.999999999997 F  62.77777777777611 C  335.9277777777761 K
147.499999999997 F  64.166666666665 C  337.31666666666496 K
149.99999999999687 F  65.55555555555382 C  338.7055555555538 K
152.49999999999687 F  66.94444444444271 C  340.0944444444427 K
154.99999999999676 F  68.33333333333154 C  341.48333333333153 K
157.49999999999676 F  69.72222222222042 C  342.8722222222204 K
159.99999999999665 F  71.11111111110925 C  344.26111111110924 K
162.49999999999665 F  72.49999999999814 C  345.6499999999981 K
164.99999999999653 F  73.88888888888697 C  347.03888888888696 K
167.49999999999653 F  75.27777777777585 C  348.4277777777758 K
169.99999999999642 F  76.66666666666468 C  349.8166666666647 K
172.49999999999642 F  78.05555555555357 C  351.20555555555353 K
174.9999999999963 F  79.4444444444424 C  352.5944444444424 K
177.4999999999963 F  80.83333333333128 C  353.98333333333125 K
179.9999999999962 F  82.22222222222011 C  355.3722222222201 K
182.4999999999962 F  83.611111111109 C  356.76111111110896 K
184.99999999999608 F  84.99999999999783 C  358.1499999999978 K
187.49999999999608 F  86.38888888888671 C  359.5388888888867 K
189.99999999999596 F  87.77777777777554 C  360.92777777777553 K
192.49999999999596 F  89.16666666666443 C  362.3166666666644 K
194.99999999999585 F  90.55555555555325 C  363.70555555555325 K
197.49999999999585 F  91.94444444444214 C  365.0944444444421 K
199.99999999999574 F  93.33333333333097 C  366.48333333333096 K
202.49999999999574 F  94.72222222221986 C  367.8722222222198 K
204.99999999999562 F  96.11111111110868 C  369.2611111111087 K
207.49999999999562 F  97.49999999999757 C  370.64999999999753 K
209.9999999999955 F  98.8888888888864 C  372.0388888888864 K
bash-3.2$ java TemperatureTester
All tests passed!
Please enter the base Temperature
0K  K
Please enter the limit Temperature
212 F
Please enter the stepValue
20.0
-459.67 F  -273.15000000000003 C  -5.6843418860808015E-14 K
-423.67000000000013 F  -253.1500000000001 C  19.999999999999886 K
-387.6700000000002 F  -233.15000000000012 C  39.99999999999986 K
-351.6700000000003 F  -213.15000000000018 C  59.9999999999998 K
-315.67000000000036 F  -193.1500000000002 C  79.99999999999977 K
-279.6700000000004 F  -173.15000000000023 C  99.99999999999974 K
-243.67000000000047 F  -153.15000000000026 C  119.99999999999972 K
-207.67000000000053 F  -133.1500000000003 C  139.9999999999997 K
-171.67000000000058 F  -113.15000000000033 C  159.99999999999966 K
-135.67000000000064 F  -93.15000000000036 C  179.9999999999996 K
-99.6700000000007 F  -73.15000000000039 C  199.9999999999996 K
-63.6700000000007 F  -53.15000000000039 C  219.9999999999996 K
-27.670000000000698 F  -33.15000000000039 C  239.9999999999996 K
8.329999999999302 F  -13.150000000000388 C  259.9999999999996 K
44.3299999999993 F  6.849999999999612 C  279.9999999999996 K
80.3299999999993 F  26.849999999999614 C  299.9999999999996 K
116.3299999999993 F  46.84999999999962 C  319.9999999999996 K
152.3299999999993 F  66.84999999999961 C  339.9999999999996 K
188.3299999999993 F  86.84999999999961 C  359.9999999999996 K
bash-3.2$ exit

Script done on Sat Jun 23 17:00:52 2018
