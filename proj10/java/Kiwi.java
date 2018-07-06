/* Kiwi.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Kiwi extends WalkingBird {
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Kiwi() {
	super();
    }

    public Kiwi(String name)
    {     
	super(name);
    }


 /* A Kiwi's Call
  * Return: a duck-call ("Quack!").
  */

    public String call()
   {
     return "E-lisp Sucks Chirp Chrip !";
   }

}
