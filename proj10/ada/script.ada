Script started on Sun Jun 24 16:08:01 2018
[?1034hbash-3.2$ cat bird_package.adb bird_package.ads
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String) is
   begin
    A_Bird.My_Name := Name;
   end Init;
   

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function Name(A_Bird : in Bird_Type) return String is
   begin
    return A_Bird.My_Name;
   end Name;
   
   
   ---------------------------------------------------
   -- A Bird's Movement 
   -- Recieve: A_Bird : a Bird_Type.
   -- Return: A_Bird.
   ----------------------------------------------------
   function Movement(A_Bird : in Bird_Type) return String is
   begin 
      return "moved";
   end Movement;
     
   
   
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
function Call(A_Bird : in Bird_Type) return String is
   begin
    return "Squawwwwwwk!";
   end Call;


 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   
   function Type_Name(A_Bird : in Bird_Type) return String is
   begin
    return "Bird";
   end Type_Name;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   
   procedure Put(A_Bird : in Bird_Type'Class) is
   begin
    Put( Name(A_Bird) );
    Put( ' ' );
    Put( Type_Name(A_Bird) );
    Put( " just " );
    Put( Movement(A_Bird) );
    Put( " and said ");
    Put( Call(A_Bird) );
   end Put; 

   
   
end Bird_Package;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------



package Bird_Package is
   
   type Bird_Type is tagged private;

 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
   procedure Init(A_Bird : out Bird_Type; Name : in String);

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
   function  Name(A_Bird : in Bird_Type) return String;
   
   ---------------------------------------------------
   -- A Bird's Movement 
   -- Recieve: A_Bird : a Bird_Type.
   -- Return: A_Bird.
   ----------------------------------------------------
   function Movement(A_Bird : in Bird_Type) return String;
   
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
   function  Call(A_Bird : in Bird_Type) return String;
   
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
   function  Type_Name(A_Bird : in Bird_Type) return String;
   
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
   procedure Put(A_Bird : in Bird_Type'Class);

private
   
   type Bird_Type is
      tagged record
	 My_Name : String(1..6);
      end record;
   

end Bird_Package;
bash-3.2$ cat birds.adb
-- birds.adb tests our Birds type hierarchy.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
-----------------------------------------------------

with Bird_Package, 
      Duck_Package, 
      Goose_Package, 
      Owl_Package,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      FlyingBird_Package,
      WalkingBird_Package,
      Ada.Text_IO;
use Bird_Package,
      Duck_Package, 
      Goose_Package,
      Owl_Package,
      Penguin_Package,
      Ostrich_Package,
      Kiwi_Package,
      FlyingBird_Package,
      WalkingBird_Package,
      Ada.Text_IO;


procedure Birds is

 Bird1 : Bird_Type;       -- base class
 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;    -- derived class 4
 Bird6 : Ostrich_Type;    -- derived class 5
 Bird7 : Kiwi_Type;       -- derived class 6

begin
   New_Line;
   Put("Welcome to the Bird Park!");
   New_Line;
   Init(Bird1, "Tweety");
   Put(Bird1); New_Line;

 Init(Bird2, "Donald");
 Put(Bird2); New_Line;

 Init(Bird3, "Mother");
 Put(Bird3); New_Line;

 Init(Bird4, "Woodsy");
 Put(Bird4); New_Line;
 
 Init(Bird5, "Lillia");
 Put(Bird5); New_Line;
 
 Init(Bird6, "Orvill");
 Put(Bird6); New_Line;
 
 Init(Bird7, "Martin");
 Put(Bird7); New_Line;
 
 New_Line;
end Birds;

bash-3.2$ cat duck_package.adb duck_a[Kpackage.ads
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   
   function Call(A_Duck : in Duck_Type) return String is
   begin
      return "Quack!";   
   end Call;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   
   function Type_Name(A_Duck : in Duck_Type) return String is
   begin
      return "Duck";
   end Type_Name;

end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with FlyingBird_Package; use FlyingBird_Package;

package Duck_Package is

   type Duck_Type is new FlyingBird_Type with private;
   
   
 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function  Call(A_Duck : in Duck_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
   function  Type_Name(A_Duck : in Duck_Type) return String;

private
   type Duck_Type is new FlyingBird_Type with
          record
            null;
          end record;

end Duck_Package;
bash-3.2$ cat flying_b[K[Kbird_pa[K[Kpackage.adb flyingbird_package.ads
--FlyingBird_package.adb gives Flying related declerations and 
-- derives flyingbird from bird
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------------------


with Ada.Text_IO;
use Ada.Text_IO;

with Bird_Package; use Bird_Package;

package body FlyingBird_Package is   
   
   --------------------------------------------------
   -- Determines type of bird
   -- Overrides Bird.movement()
   -- Recieve: a Bird, a bird type 
   -- Returns a flying bird
   --------------------------------------------------
   
   function Movement(A_FlyingBird : in FlyingBird_Type) return String is
   begin
      return "flew";   
   end Movement;
   


   
end FlyingBird_package;
--FlyingBird_package.ads gives Flying related declerations and 
-- derives flyingbird from bird
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------------------

with Bird_Package; use Bird_Package;

package FlyingBird_Package is
   
   type FlyingBird_Type is new Bird_Type with  private;
   
   
   --------------------------------------------------
   -- Determines type of bird
   -- Overrides Bird.movement()
   -- Recieve: a Bird, a bird type 
   -- Returns a flying bird
   --------------------------------------------------
   
   function Movement(A_FlyingBird : in FlyingBird_Type) return String;
   
   
private
   
   type FlyingBird_Type is new Bird_Type with 
        record
	 null;
      end record;
   
end FlyingBird_package;
bash-3.2$ cat goods[K[Kse_package.adb goose-[K_package.ads
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

package body Goose_Package is

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Goose : in Goose_Type) return String is
    begin
     return "Honk!";
    end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function Type_Name(A_Goose : in Goose_Type) return String is
    begin
     return "Goose";
    end Type_Name;
    

end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with FlyingBird_Package; use FlyingBird_Package;

package Goose_Package is

 type Goose_Type is new FlyingBird_Type with private;


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
 
 function  Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
 function  Type_Name(A_Goose : in Goose_Type) return String;
 
 
private
type Goose_Type is new FlyingBird_Type with
          record
            null;
          end record;

end Goose_Package;
bash-3.2$ cat kiwi_package.adb kiwi_package.ads
-- kiwi_package.ads gives Kiwi-related declarations,
--  and derives Kiwi from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package body Kiwi_Package is   
   
 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function  Call(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Chirp E-Lisp sucks Chirp Chrip";
   end Call;
   

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
   function  Type_Name(A_Kiwi : in Kiwi_Type) return String is
   begin
      return "Kiwi";
   end Type_Name;

end Kiwi_Package;
-- kiwi_package.ads gives Kiwi-related declarations,
--  and derives Kiwi from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package Kiwi_Package is

   type Kiwi_Type is new WalkingBird_Type with private;
   
   
 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())          -
 -- Receive: A_Kiwi, a Kiwi_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
   function  Call(A_Kiwi : in Kiwi_Type) return String;

 ------------------------------------------------------------
 -- Determine type of a Kiwi (Over-rides Bird.Type_Name()) -
 -- Receive: A_Kiwi, a Kiwi_Type.                          -
 -- Return: "Kiwi".                                        -
 -----------------------------------------------------------
   function  Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
   type Kiwi_Type is new WalkingBird_Type with
          record
            null;
          end record;

end Kiwi_Package;
bash-3.2$ cat ostrci[K[Kich_package.adb ostrich_package.ads
-- ostrich_package.adb gives ostrich-related declarations,
--
--  and derives ostrich from FlyingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package body Ostrich_Package is


 ----------------------------------------------------
 -- An Ostrich's Call (Over-rides Bird.Call())         -
 -- Receive: An_Ostrich, an Ostrich.                      -
 -- Return: "Snork!"                                 -
 ----------------------------------------------------
 
   function  Call(An_Ostrich : in Ostrich_Type) return String is
   begin
      return "Snork!";
   end Call;

 -----------------------------------------------------
 -- Determine type of an Ostrich                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Ostrich, an Ostrich.                       -
 -- Return: "Ostrich".                                 -
 -----------------------------------------------------
      function  Type_Name(An_Ostrich : in Ostrich_Type) return String is
      begin
	 return "Ostrich";
      end Type_Name;
 

end Ostrich_Package;
-- ostrich_package.ads gives ostrich-related declarations,
--
--  and derives ostrich from FlyingBird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package Ostrich_Package is

 type Ostrich_Type is new WalkingBird_Type with private;

 ----------------------------------------------------
 -- An Ostrich's Call (Over-rides Bird.Call())         -
 -- Receive: An_Ostrich, an Ostrich.                      -
 -- Return: "Snork!"                                 -
 ----------------------------------------------------
 
 function  Call(An_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of an Ostrich                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Ostrich, an Ostrich.                       -
 -- Return: "Ostrich".                                 -
 -----------------------------------------------------
 function  Type_Name(An_Ostrich : in Ostrich_Type) return String;
 
 
private
type Ostrich_Type is new WalkingBird_Type with
          record
            null;
          end record;

end Ostrich_Package;
bash-3.2$ cat owl_package.adb owl_package.ads
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   
   function Call(An_Owl : in Owl_Type) return String is
   begin
      return "Whooo!";
   end Call;
   
   
 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   function Type_Name(An_Owl : in Owl_Type) return String is
   begin
      return "Owl";
   end Type_Name;
   
    
    
end Owl_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with FlyingBird_Package; use FlyingBird_Package;

package Owl_Package is
   
   type Owl_Type is new FlyingBird_Type with private;


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
   
   function  Call(An_Owl : in Owl_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
   
   function Type_Name(An_Owl : in Owl_Type) return String;
   
private
   
   type Owl_Type is new FlyingBird_Type with 
      record
	 null;
      end record;
   


end Owl_Package;
bash-3.2$ cat penguin_pak[Kckage.adb penguin_package.ads
-- penguin_package.adb gives Penguin-related declarations,
--  and derives Penguin from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package body Penguin_Package is
   

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())           -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Huhhh hUHHH HUUHH!"                                 -
 ----------------------------------------------------
   
   function  Call(A_penguin : in Penguin_Type) return String is
   begin
      return "Huhh-huuuuuh-HUUUUUUUUHH";
   end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Penguin, an Penguin_Type.                    -
 -- Return: "Penguin".                                   -
 -----------------------------------------------------
   
      function Type_Name(A_Penguin : in Penguin_Type) return String is
      begin
	 return "Penguin";
      end Type_Name;


end Penguin_Package;
-- penguin_package.ads gives Penguin-related declarations,
--  and derives Penguin from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------

with WalkingBird_Package; use WalkingBird_Package;

package Penguin_Package is
   
   type Penguin_Type is new WalkingBird_Type with private;


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())           -
 -- Receive: A_Penguin, a Penguin_Type.                   -
 -- Return: "Huhhh hUHHH HUUHH!"                                 -
 ----------------------------------------------------
   
   function  Call(A_penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Penguin, an Penguin_Type.                    -
 -- Return: "Penguin".                                   -
 -----------------------------------------------------
   
   function Type_Name(A_Penguin : in Penguin_Type) return String;
   
private
   
   type Penguin_Type is new WalkingBird_Type with 
      record
	 null;
      end record;
   


end Penguin_Package;
bash-3.2$ cat walking_[Kbird_package.adb walkingbird_package.ads
--WalkingBird_package.ads gives Walking related declerations and 
-- derives Walkingbird from bird
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

with Bird_Package; use Bird_Package;

package body WalkingBird_Package is
      
   --------------------------------------------------
   -- Determines type of bird
   -- Overrides Bird.movement()
   -- Recieve: a Bird, a bird type 
   -- Returns a walking bird
   --------------------------------------------------
   
   function Movement(A_WalkingBird : in WalkingBird_Type) return String is
   begin
      return "walked";   
   end Movement;
   

   
   
   
end WalkingBird_package;
--WalkingBird_package.ads gives Walking related declerations and 
-- derives Walkingbird from bird
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College. 
-- Date: June 24, 2018
---------------------------------------------------------------

with Bird_Package; use Bird_Package;

package WalkingBird_Package is
   
   type WalkingBird_Type is new Bird_Type with  private;
   
   
   --------------------------------------------------
   -- Determines type of bird
   -- Overrides Bird.movement()
   -- Recieve: a Bird, a bird type 
   -- Returns a walking bird
   --------------------------------------------------
   
   function Movement(A_WalkingBird : in WalkingBird_Type) return String;
   
   
private
   
   type WalkingBird_Type is new Bird_Type with 
       record
	 null;
      end record;
   
end WalkingBird_package;
bash-3.2$ make
gcc -c  birds.adb
gcc -c  bird_package.adb
gcc -c  duck_package.adb
gcc -c  goose_package.adb
gcc -c  owl_package.adb
gnatbind birds.ali
bash-3.2$ ./birds

Welcome to the Bird Park!

Hawkeye Bird just moved and said Squaaaaaaaaaawk!
Donald Duck just flew and said Quack!
Mother Goose Goose just flew and said Honk!
Woodsey Owl just flew and said Whoooooo
Peter Penguin just walked and said Huh-huh-huh-huuuuuuh!
Orville Ostrich just walked and said Snork!
Martinez Kiwi just walked and said E-lisp Sucks Chirp Chrip !

bash-3.2$ d[Kexit

Script done on Sun Jun 24 16:11:16 2018
