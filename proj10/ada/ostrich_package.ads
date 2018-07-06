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
