Script started on Fri Feb 16 09:11:52 2018
[?1034hbash-3.2$ cat LetterGrade.java
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

}bash-3.2$ javac LetterGrade.java
bash-3.2$ java LetterGrade

Enter your grade: 
100
A
bash-3.2$ java LetterGradec LetterGrade.java[C[C[C[C[C[C[C[C[C[C[C[C[C[C[6P LetterGrade

Enter your grade: 
90
A
bash-3.2$ java LetterGrade

Enter your grade: 
89
B
bash-3.2$ java LetterGrade

Enter your grade: 
76
C
bash-3.2$ java LetterGrade

Enter your grade: 
65
D
bash-3.2$ java LetterGrade

Enter your grade: 
40
F
bash-3.2$ exit

Script done on Fri Feb 16 09:12:31 2018
