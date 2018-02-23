/* Factorial.java calculates the factorial of a given natural number.
 *
 * Input: n, a natural number.
 * PRE: 0 <= n
 * Output: n factorial.
 * By: Shion Fukuzawa, for CS 214 at Calvin College. 
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial {

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");
    double start, stop, increment;
    start = keyboard.nextDouble();
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();

    while (start <= stop) {
      System.out.printf("The logarithm of %f is %f\n", start, Math.log10(start));
      start += increment;
    }

  }
}

