/* WalkingBird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

import java.io.*;

public class WalkingBird extends Bird
{

/* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

    public WalkingBird()
    {
	super();
    }

    public WalkingBird(String name)
    {
	super(name);
    }

    /* defines movement 
  */

    public String movement()
    {
	return "walked";
    }
    

}

