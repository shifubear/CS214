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

