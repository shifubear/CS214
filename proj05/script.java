Script started on Wed Feb 28 09:27:15 2018
[?1034hbash-3.2$ cat Roots.java
/* Roots.java is a class and program that calculates the two roots of a quadratic
 * 
 * By: Shion Fukuzawa, for CS214 at Calvin College
 * Date: February 28, 2018
 ***************************************************************/

import java.util.Scanner;

// java class Roots
public class Roots
{
  // main program
  public static void main(String[] args)
    {
      double a, b, c;
      Scanner keyboard = new Scanner(System.in);
      // prompt for the polynomial coefficients
      System.out.println("\nTo find the roots of a quadratic, enter its roots: ");
      System.out.println("\nEnter the coefficient of x^2:");
      a = keyboard.nextDouble();
      System.out.println("\nEnter the coefficient of x:");
      b = keyboard.nextDouble();
      System.out.println("\nEnter the coefficient of 1:");
      c = keyboard.nextDouble();

      //Create list, compute results and print
      double [] resultList = new double[2];
      if (quadraticRoots(a, b, c, resultList)) {
        System.out.println("\nThe first root is " + resultList[0] + "\nand the second root is " + resultList[1]);
      }
    }
  
  /* quadraticRoots() takes the coefficients of a quadratic polynomial and returns the two roots,
   *        if a is not 0 and b^2 - 4ac is non-negative. 
   * Receive: 	a - coefficient of x^2
   *            b - coefficient of x
   *            c - coefficient of 1
   *            resList - an array of doubles in which to place the two roots
   *****************************************************/
  public static Boolean quadraticRoots(double a, double b, double c, double[] results)
  {
      if (a != 0) {
          double arg = b*b - 4*a*c;
          if (arg >= 0) {
              results[0] = (-b + Math.sqrt(arg))/(2*a);
              results[1] = (-b - Math.sqrt(arg))/(2*a);
              return true;
          } else {
              System.err.println("\n*** quadraticRoots(): b^2 - 4ac is negative!");
              return false;
          }
      } else {
          System.err.println("\n*** quadraticRoots(): a is zero!");
          return false;
      }
  } 

}
bash-3.2$ javac Roots.java
bash-3.2$ java Roots

To find the roots of a quadratic, enter its roots: 

Enter the coefficient of x^2:
1

Enter the coefficient of x:
-2

Enter the coefficient of 1:
1

The first root is 1.0
and the second root is 1.0
bash-3.2$ java Roots

To find the roots of a quadratic, enter its roots: 

Enter the coefficient of x^2:
1

Enter the coefficient of x:
1

Enter the coefficient of 1:
1

*** quadraticRoots(): b^2 - 4ac is negative!
bash-3.2$ java Roots

To find the roots of a quadratic, enter its roots: 

Enter the coefficient of x^2:
0

Enter the coefficient of x:
1

Enter the coefficient of 1:
1

*** quadraticRoots(): a is zero!
bash-3.2$ exit

Script done on Wed Feb 28 09:28:36 2018
