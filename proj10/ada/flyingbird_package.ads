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
