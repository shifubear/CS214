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
