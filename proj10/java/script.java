Script started on Sun Jun 24 16:04:40 2018
[?1034hbash-3.2$ cat Bird.java Birds.java Duck.java Flying [KBird.java Goose.java Kiwi.jav a Ostra[Kich.java Owl.java Penguin.java WalkingBird.java
/* Bird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

import java.io.*;

public class Bird
{

 /* default constructor
  * PostCond: myName == "".
  */
    public Bird()
    {
	myName = "";
    }


 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Bird(String name)
    {
	myName = name;
    } 



 /* Name accessor
  * Return: myName.
  */
    public String getName()
    {
	return myName;
    }


    public String movement()
    {
	return "moved";
    }
    
 /* A Bird's Call
  * Return: a default bird-call ("Squawk!").
  */
    public String call()
    {
	return "Squaaaaaaaaaawk!";
    }

 /* Output a Bird 
  * Output: Everything known about myself
  *          to the standard output stream.
  */
    public void print()
    {
	System.out.println( getName() + ' ' + getClass().getName()
                             + " just " + movement() + " and said " + call() );
    }


  private String myName;
}

/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Joel Adams, for CS 214 Lab 10 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 *********************************************************/

public class Birds {
  
  public static void main(String[] args) {
      System.out.println("\nWelcome to the Bird Park!\n");

      Bird bird0 = new Bird();

      Bird bird1 = new Bird("Hawkeye");
      bird1.print();

      Duck bird2 = new Duck("Donald");
      bird2.print();

      Goose bird3 = new Goose("Mother Goose");
      bird3.print();

      Owl bird4 = new Owl("Woodsey");
      bird4.print();

      Penguin bird5 = new Penguin("Peter");
      bird5.print();

      Ostrich bird6 = new Ostrich("Orville");
      bird6.print();

      Kiwi bird7 = new Kiwi("Martinez");
      bird7.print();
     
      System.out.println();
    }
}

/* Duck.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Duck extends FlyingBird {
    

    public Duck() {
	super();
    }

    public Duck(String name)
    {     
	super(name);
    }


 /* A Duck's Call
  * Return: a duck-call ("Quack!").
  */

    public String call()
   {
     return "Quack!";
   }

}

/* FlyingBird.java provides a Bird class.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

import java.io.*;

public class FlyingBird extends Bird
{

    /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

    public FlyingBird()
    {
	super();
    }

    public FlyingBird(String name)
    {
	super(name);
    }


    /* defines movement 

     */
    public String movement()
    {
	return "flew";
    }
    

}

/* Goose.java provides a Goose subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Goose extends FlyingBird {

 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */

    public Goose()
   {
      super();
   }

   public Goose(String name)
   {     
     super(name);
   } 




 /* A Goose's Call
  * Return: a goose-call ("Honk!").
  */

    public String call()
    {
	return "Honk!";
    }
    
} 

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

/* Penguin.java provides a Duck subclass of Bird.
 *
 * Begun by: Prof. Adams, for CS 214 at Calvin College.
 * Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
 * Date: June 24, 2018
 ******************************************************/

public class Penguin extends WalkingBird {
    
 /* explicit constructor
  * Receive: name, a String 
  * PostCond: myName == name.
  */
    public Penguin() {
	super();
    }

    public Penguin(String name)
    {     
	super(name);
    }


 /* A Penguin's Call
  * Return: a duck-call ("Quack!").
  */

    public String call()
   {
     return "Huh-huh-huh-huuuuuuh!";
   }

}
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

bash-3.2$ make
javac -deprecation Birds.java
bash-3.2$ ./[K[Kjava Birds

Welcome to the Bird Park!

Hawkeye Bird just moved and said Squaaaaaaaaaawk!
Donald Duck just flew and said Quack!
Mother Goose Goose just flew and said Honk!
Woodsey Owl just flew and said Whoooooo
Peter Penguin just walked and said Huh-huh-huh-huuuuuuh!
Orville Ostrich just walked and said Snork!
Martinez Kiwi just walked and said E-lisp Sucks Chirp Chrip !

bash-3.2$ exit

Script done on Sun Jun 24 16:05:20 2018
