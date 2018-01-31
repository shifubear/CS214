Script started on Wed 31 Jan 2018 09:30:34 AM EST
sf27@atanasoff:~/Desktop/CS214/proj01$ cat RectangleArea.java


/* RectangleArea.java computes the area of a rectangle.
 *
 * Input: The width and height of the circle.
 * Precondition: The width and height are positive numbers.
 * Output: The area of the rectangle.
 *
 * By: Shion Fukuzawa
 * Date: January 31, 2018
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class RectangleArea {

     /* function rectangleArea() computes a rectangle's area, given its width and height.
      * Parameter: w, h, both doubles
      * Precondition: w, h are not negative.
      * Returns: the area of the rectangle
      */
     public static double rectangleArea(double w, double h) {
        return w*h;               // return an expression
     } // rectangleArea method
	
  // main program
  public static void main(String[] args) {
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 

      System.out.println("To compute the area of a rectangle,");

      // prompt for width
      System.out.print(" enter its width: ");       
      //Get the number from the user
      double width = keyboard.nextDouble();
      
      // prompt for height
      System.out.print(" enter its height: ");
      //Get the number from the user
      double height = keyboard.nextDouble();

      // output area
      System.out.println("The area is " + rectangleArea(width, height)); 
  } // main method
} // class RectangleArea
sf27@atanasoff:~/Desktop/CS214/proj01$ javac -deprecation RectangleArea.java
sf27@atanasoff:~/Desktop/CS214/proj01$ java RectangleArea. 
To compute the area of a rectangle,
 enter its width: 3
 enter its height: 5
The area is 15.0
sf27@atanasoff:~/Desktop/CS214/proj01$ java RectangleArea
To compute the area of a rectangle,
 enter its width: 8
 enter its height: 4
The area is 32.0
sf27@atanasoff:~/Desktop/CS214/proj01$ java RectangleArea
To compute the area of a rectangle,
 enter its width: 3.14
 enter its height: 2.17
The area is 6.8138
sf27@atanasoff:~/Desktop/CS214/proj01$ exit

Script done on Wed 31 Jan 2018 09:31:28 AM EST
