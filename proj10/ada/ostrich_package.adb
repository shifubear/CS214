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
