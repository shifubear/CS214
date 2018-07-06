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
