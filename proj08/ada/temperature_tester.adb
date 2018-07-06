--temperature_tester.adb
-- name_tester.adb "test-drives" the Name type.
--
-- Completed by: Shion Fukuzawa, for CS214 at Calvin College 
-- Date: June 23, 2018
----------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Temperature_package; use Ada.Text_IO, Ada.Float_Text_IO, Temperature_package;

procedure temperature_tester is
   aTemp: Temperature_Package.Temperature;

       ----------------------------------------------
  -- Function: MakeTable
  -- PRE: The valies inputted are valid, all temperatures are valid 
  -- POST: The Table starting at base and ending at limit is increased by step
  ------------------------------------------------
   procedure MakeTable is
      BaseTemp, LimitTemp : Temperature;
      StepVal : Float;
     
   begin
      Init(BaseTemp, 0.0, 'K');
      Init(LimitTemp, 0.0, 'K');
      New_Line;
      Put("Enter the base temp: "); 
      InputTemp(Basetemp); New_Line;
      Put( "Enter the limit Temp "); 
      InputTemp(LimitTemp); New_Line;
      Put("Enter the step value: "); 
      Get(StepVal); New_Line;
      New_Line;
      New_Line;
      
      while LessThan(BaseTemp, LimitTemp) or EqualTemp(BaseTemp, LimitTemp) loop
	 Put(ConvertCelsius(BaseTemp));
	 Put(" C       ");
	 Put(ConvertFahrenheit(BaseTemp));
	 Put(" F       ");
	 Put(ConvertKelvin(BaseTemp));
	 Put(" K       ");
	 New_Line;
	 Upper(BaseTemp, StepVal);
      end loop;
      
   end MakeTable;
   
      
     
  
begin
   Temperature_Package.Init(aTemp, 98.5, 'F');
   MakeTable;

  Put("All tests passed!"); New_line;
  
  
end temperature_tester;
