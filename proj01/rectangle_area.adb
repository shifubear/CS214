-- circle_area.adb computes the area of a circle.
--
-- Input: The width and height of the rectangle.
-- Precondition: The width and height are positive numbers.
-- Output: The area of the rectangle.
--
-- By: Shion Fukuzawa
-- Date: January 31, 2018
----------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is

   width, height, area : float; 

   -- function rectangleArea computes a rectangle's area, given its width and height
   -- Parameter: w, a float
   -- Parameter: h, a float
   -- Precondition: w, h >= 0.0
   -- Return: the area of the rectangle whose width is w and height is h
   ----------------------------------------------------
   function rectangleArea(w: in float; h: in float) return float is 
   begin
      return w * h;
   end rectangleArea;

begin                           
   Put_Line("To compute the area of a rectangle,");
   Put("enter its width: ");
   Get(width);

   Put("enter its height: ");
   Get(height);
   area := rectangleArea(width, height);

   Put("The rectangle's area is ");
   Put(area);
   New_Line;
end rectangle_area;