Script started on Wed 07 Feb 2018 10:09:46 AM EST
sf27@stroustrup:~/Desktop/cs214/lab03$ cat YearD Codes.java
/* YearCodes.java is a driver for function yearCode().
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 ****************************************************************/

import java.util.Scanner;

public class YearCodes {

   public static void main(String[] args) {
      Scanner keyboard = new Scanner(System.in);
      System.out.println("\nEnter your academic year: "); // prompt

      String year = keyboard.next();       // read year
      System.out.println(yearCode(year)); // display its code
   }

   /***************************************************************
    * yearCode() converts an academic year into its integer code.
    *
    * Receive: year, a string.
    * PRE: year is one of {freshman, sophomore, junior, or senior}.
    * Return: the integer code corresponding to year.
    */

   public static int yearCode(String year)
   {
        if (year.equals("freshman"))
            return 1;                
        else if (year.equals("sophomore"))
            return 2;
        else if (year.equals("junior"))
            return 3;
        else if (year.equals("senior"))
            return 4;
        else
            return 0;
   }

}
sf27@stroustrup:~/Desktop/cs214/lab03$ javac YearCodes.java
sf27@stroustrup:~/Desktop/cs214/lab03$ java YearCodes

Enter your academic year: 
freshman
1
sf27@stroustrup:~/Desktop/cs214/lab03$ java YearCodes

Enter your academic year: 
sophomore
2
sf27@stroustrup:~/Desktop/cs214/lab03$ java YearCodes

Enter your academic year: 
junior
3
sf27@stroustrup:~/Desktop/cs214/lab03$ java YearCodes

Enter your academic year: 
senior
4
sf27@stroustrup:~/Desktop/cs214/lab03$ java YearCodes

Enter your academic year: 
hello
0
sf27@stroustrup:~/Desktop/cs214/lab03$ exit

Script done on Wed 07 Feb 2018 10:10:28 AM EST
