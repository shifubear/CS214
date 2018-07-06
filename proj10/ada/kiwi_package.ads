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
