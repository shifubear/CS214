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
