Script started on Wed 31 Jan 2018 09:02:11 AM EST
sf27@atanasoff:~/Desktop/CS214$ cat cire    Cri  ircleArea.
cat: CircleArea.: No such file or directory
sf27@atanasoff:~/Desktop/CS214$ cat CircleArea.java 


/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Adams, for CS 214, at Calvin College.
 * Completed by: Shion Fukuzawa
 * Date: January 31, 2018
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea {

     /* function circleArea() computes a circle's area, given its radius.
      * Parameter: r, a double
      * Precondition: r is not negative.
      * Returns: the area of the circle
      */
     public static double circleArea(double r) {
        return Math.PI * r * r;               // return an expression
     } // circleArea method
	
  // main program
  public static void main(String[] args) {
      // prompt for radius
      System.out.println("To compute the area of a circle,");
      System.out.print(" enter its radius: ");
     
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 
  
      //Get the number from the user
      double radius = keyboard.nextDouble();
      
      // output area
      System.out.println("The area is " + circleArea(radius)); 
  } // main method
} // class CircleArea
sf27@atanasoff:~/Desktop/CS214$ jvaa  a  avac -deprecation cr  CircleArea.java 
sf27@atanasoff:~/Desktop/CS214$ java CircleArea. 
To compute the area of a circle,
 enter its radius: 1
The area is 3.141592653589793
sf27@atanasoff:~/Desktop/CS214$ java CircleArea
To compute the area of a circle,
 enter its radius: 2
The area is 12.566370614359172
sf27@atanasoff:~/Desktop/CS214$ java CircleArea
To compute the area of a circle,
 enter its radius: 2.5
The area is 19.634954084936208
sf27@atanasoff:~/Desktop/CS214$ java CircleArea
To compute the area of a circle,
 enter its radius: 4.99999
The area is 78.53950218079365
sf27@atanasoff:~/Desktop/CS214$ exit

Script done on Wed 31 Jan 2018 09:03:01 AM EST
