/* Factorial.java calculates the factorial of a given natural number.
 *
 * Input: n, a natural number.
 * PRE: 0 <= n
 * Output: n factorial.
 * By: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: February 23, 2018
 ********************************************************/
import java.util.Scanner; 		// Get input

class Factorial {

  /* function factorial() returns the factorial of n.
      * Parameter: n, a natural number
      * Precondition: 0 <= n.
      * Returns: n factorial.
      */
    public static int factorial(int n) {
      int res = 1;  
      for (int i = 1; i <= n; i++) {
          res *= i;
      }               
      return res; // return result
    } // factorial method

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);
    System.out.println("To compute n!, enter n:");
    int n;
    n = keyboard.nextInt();
    System.out.printf("%d! = %d\n", n, factorial(n));
  }
}

