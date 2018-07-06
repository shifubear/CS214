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
