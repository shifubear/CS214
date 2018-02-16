/* LetterGrade.java is a driver for function letterGrade().
 *
 * Begun by: Shion Fukuzawa, for CS 214 at Calvin College.
 ****************************************************************/
import java.util.Scanner;

public class LetterGrade {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your grade: "); // prompt

      String average = keyboard.next();       // read year
      System.out.println(letterGrade(Integer.parseInt(average)));   // display its code
   }

   /***************************************************************
    * letterGrade() converts an academic year into its integer code.
    *
    * Receive: average, an Integer.
    * PRE: 0 <= average <= 100.
    * Return: the letter grade corresponding to average.
    */
   public static char letterGrade(Integer average)
   {
        switch (average / 10)
        {
            case 10: case 9:
                return 'A';
            case 8:
                return 'B';
            case 7:
                return 'C';
            case 6:
                return 'D';
            default:
                return 'F';
        }
   }

}