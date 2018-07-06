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
