/* Owl.java provides an Owl subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Owl extends FlyingBird{

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    
    public Owl()
    {
	super();
    }

    public Owl(String name)
    {
	super(name);
    }

 /* An Owl's Call
  * Return: an owl-call ("Whoo-hoo!").
  */

    public String call()
    {
	return "Whoooooo";
    }

} 

