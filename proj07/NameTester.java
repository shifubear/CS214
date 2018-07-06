/* NameTester.java is a 'driver' to test class Name.
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Student: Shion Fukuzawa, for CS 214 at Calvin College.
 * Date: April 14, 2018
 ************************************************************/

import java.util.Scanner;

public class NameTester  
{
  public static void main(String[] args)
  {
     Name aName = new Name("John", "Paul", "Jones");

     assert aName.getFirst().equals("John") ;
     assert aName.getMiddle().equals("Paul") ;
     assert aName.getLast().equals("Jones") ;

     System.out.println(aName);
     assert aName.toString().equals("John Paul Jones");

     aName.setFirst("Peter");
     assert aName.getFirst().equals("Peter") ;
     aName.setMiddle("Piper");
     assert aName.getMiddle().equals("Piper") ;
     aName.setLast("Smith");
     assert aName.getLast().equals("Smith") ;
     assert aName.lfmi().equals("Smith, Peter P.");

     aName.read();
     System.out.println(aName);


      System.out.println("All tests passed!");
  }
}

// Replace this line with the declaration of class Name...
class Name {
  public Name(String first, String middle, String last)
  {
    myFirst = first;
    myMiddle = middle;
    myLast = last;
  }

  public String getFirst()
  {
    return myFirst;
  }

  public String getMiddle()
  {
    return myMiddle;
  }

  public String getLast() 
  {
    return myLast;
  }

  public String toString() 
  {
    return myFirst + ' ' + myMiddle + ' ' + myLast;
  }

  public void setFirst(String first) 
  {
    myFirst = first;
  }

  public void setMiddle(String middle) 
  {
    myMiddle = middle;
  }

  public void setLast(String last)
  {
    myLast = last;
  }

  public String lfmi()
  {
    return myLast + ", " + myFirst + " " + myMiddle.charAt(0) + ".";
  }

  public void read()
  {
    Scanner keyboard = new Scanner(System.in); 
    myFirst = keyboard.next();
    myMiddle = keyboard.next();
    myLast = keyboard.next();
  }

  private String myFirst,
                 myMiddle,
                 myLast;
};
