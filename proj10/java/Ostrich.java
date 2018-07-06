/* Ostrich.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Ostrich extends WalkingBird {
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Ostrich() {
	super();
    }

    public Ostrich(String name)
    {     
	super(name);
    }


 /* An Ostrich's Call
  * Return: a duck-call ("Quack!").
  */

    public String call()
   {
     return "Snork!";
   }

}
