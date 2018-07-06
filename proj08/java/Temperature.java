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

    


