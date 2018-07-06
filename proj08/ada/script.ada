Script started on Sat Jun 23 17:07:07 2018
[?1034hbash-3.2$ cat temperature_package.ads temperature_package.adb
-- temperature_package.ads declares the Name type and its operations.
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College 
-- Date: June 23, 2018
--------------------------------------------------------------

package Temperature_package is
   type Temperature is private;
   
   
   
   procedure Init(Temp: out Temperature; Degrees: in Float; Scale: in Character);

   
   function CheckIfValid(Degrees: in Float; Scale: in Character) return Boolean;
   
   
   function getDegrees( Temp: in Temperature) return Float;
   
   function GetScale( Temp: in Temperature) return Character;
   
   
   
   function  ConvertFahrenheit( Temp: in Temperature) return Float;
   
   function ConvertCelsius( Temp: in Temperature) return Float;
   
   function ConvertKelvin( Temp: in Temperature) return Float;
   
   procedure InputTemp(Temp: in out Temperature);
   
   procedure Upper( Temp: in out Temperature; Degrees: in Float);
   
   procedure Lower( Temp: in out Temperature; Degrees: in Float);
   
   function EqualTemp(Temp1: in Temperature; Temp2: in Temperature) return Boolean;
   
   function LessThan(Temp1: in Temperature; Temp2: in Temperature) return Boolean;
   
    
        
private
    type Temperature is record
            MyDegrees: Float;
            MyScale: Character;
    end record;
    aTemp : temperature_Package.temperature ;
   
   
end Temperature_package;
  
--temperature_package.adb   defines operations for the Name type.
--
-- Completed by: Shion Fukuzawa, for CS 214 at Calvin College 
-- Date: June 23, 2018
---------------------------------------------------------


with Ada.Text_IO, Ada.Float_Text_IO; use Ada.Text_IO, Ada.Float_Text_IO;


package body Temperature_package is   

     ----------------------------------------------
  -- Init initializes a Temperature variable      -    -
  -- Receive: Temp, the Temperature variable;     - -
  --          Degrees, the deegrees of temperature;-           -
  --          Scale the scale of the degrees;  -
  -- Return: theTemp, its degrees and scale          -
  ----------------------------------------------
   procedure Init(Temp: out Temperature; Degrees: in Float;
					 Scale: in Character) is
  begin
     Temp.MyDegrees := Degrees;
     Temp.MyScale := Scale;
  end Init;
  
    ----------------------------------------------
  -- Function: CheckIfValid (Degrees, scale)0
  -- Recieve: Degrees, a float, scale a character
  -- PRE: The degrees are valid for the scale
  -- Return: True if temperature is valid for given scale
  ------------------------------------------------
  function CheckIfValid(Degrees: in Float; Scale: in Character) return Boolean is
  begin
     case Scale is
	when 'F' | 'f' =>
	   if Degrees < -459.67 then
	      return False;
	   else return True;
	   end if;
	when 'K' | 'k' =>
	   if Degrees < 0.0 then
	      return False;
	   else return True;
	   end if;
	when 'C' | 'c' => 
	   if Degrees < -273.15 then
	      return False;
	   else return True;
	   end if;
	when others =>
	   return False;
     end case;
  end CheckifValid;
  
  
      ----------------------------------------------
  -- Function: getDegrees(Temp)    
  -- Recieve: A temperature
  -- PRE:Temperature is valid and has degrees
  -- Return: The degrees contained by temperature, returns float
  ------------------------------------------------
   function getDegrees( Temp: in Temperature) return Float is
   begin
      return Temp.myDegrees;
   end GetDegrees;
     
   
       ----------------------------------------------
  -- Function: GetScale(Temp)
  -- Recieve: Temp, a temperature
  -- PRE: Temperature is valid and has scale
  -- Return: The scale of temperature, a character
  ------------------------------------------------
  function GetScale( Temp: in Temperature) return Character is 
  begin
     return Temp.MyScale;
  end GetScale;
  
  
  
      ----------------------------------------------
  -- Function: ConvertFahrenheit(Temp) 
  -- Recieve: Temp, a temperature
  -- PRE: Temperature is valid
  -- Return: Returns the degrees of temp converted into fahrenheit
  ------------------------------------------------
  function ConvertFahrenheit( Temp: in Temperature) return Float is
  begin
     if GetScale(Temp) = 'C' or GetScale(Temp) = 'c' then
	return ((GetDegrees(Temp) * 1.8) + 32.0);
     elsif GetScale(Temp) = 'K' or GetScale(Temp) = 'k' then
	return (GetDegrees(Temp) * (9.0/5.0) - 459.67);
     else
	return GetDegrees(Temp);
     end if;
  end ConvertFahrenheit;
  
  
  
      ----------------------------------------------
  -- Function: ConvertCelsius(Temp) 
  -- Recieve: Temp, a temperature
  -- PRE: Temperature is valid
  -- Return: Returns the degrees of temp converted into Celsius
  ------------------------------------------------
  function ConvertCelsius( Temp: in Temperature) return Float is
  begin 
     if GetScale(Temp) = 'F' or GetScale(Temp) = 'c' then
	return ((GetDegrees(Temp) - 32.0) * (5.0/9.0));
     elsif GetScale(Temp) = 'K' or GetScale(Temp) = 'k' then
	return (GetDegrees(Temp) - 273.15 );
     else
	return GetDegrees(Temp);
     end if;
  end ConvertCelsius;
  
  
      ----------------------------------------------
  -- Function: ConvertKelvin(Temp) 
  -- Recieve: Temp, a temperature
  -- PRE: Temperature is valid
  -- Return: Returns the degrees of temp converted into Kelvin
  ------------------------------------------------
  function ConvertKelvin( Temp: in Temperature) return Float is
  begin 
     if GetScale(Temp) = 'F' or GetScale(Temp) = 'f' then
	return (GetDegrees(Temp) + 459.67) * (5.0/9.0);
     elsif GetScale(Temp) = 'C' or GetScale(Temp) = 'c' then
	  return (GetDegrees(Temp)) + 273.15;
     else
	  return GetDegrees(Temp); 
     end if;
  end ConvertKelvin;
  
  
  
      ----------------------------------------------
  -- Function: EqualTemp(Temp, temp2    )
  -- Recieve: A temperature, a temperature         
  -- PRE: Both temperatures are valid 
  -- Return: True if their Degrees are equal, false otherwise
  ------------------------------------------------
  function EqualTemp(Temp1: in Temperature; Temp2: in Temperature) return Boolean is
  begin
     return ConvertFahrenheit(Temp1) = ConvertFahrenheit(Temp2);
     
  end EqualTemp;
  
  
      ----------------------------------------------
  -- Function: LessThan(Temp1, Temp2)
  -- Recieve: Temp1, Temp2, Both are Temperatures
  -- PRE: Both Temp1, and Temp2, are valid temps
  -- Return: True if temp1 is less than temp2's Degrees
  ------------------------------------------------
  function LessThan(Temp1: in Temperature; Temp2: in Temperature) return Boolean is
  begin
     return ConvertFahrenheit(Temp1)< ConvertFahrenheit(Temp2);
     
  end LessThan;
  
  
      ----------------------------------------------
  -- Function: Lower(Temp, Degrees)
  -- Recieve Temp, a temperature, Degrees, a float
  -- PRE: Temp is not absolute 0 in degrees
  -- POST: Temp has been lowered by Degrees Degrees
  ------------------------------------------------
  procedure Lower(Temp: in out Temperature; Degrees: in Float) is
  begin
     if CheckIfValid(GetDegrees(Temp) - Degrees, GetScale(Temp)) = True then
	Temp.MyDegrees := GetDegrees(Temp) - Degrees;
     else
	New_Line; Put("Not a real Temperature");
     end if;
  end Lower;
  
  
      ----------------------------------------------
  -- Function: Upper(Temp, Degrees)
  -- Recieve Temp, a temperature, and Degrees, a float
  -- PRE: Temperature is valid 
  -- POST: Temperature has been raised Degrees Degrees 
  ------------------------------------------------
   procedure Upper(Temp: in out Temperature; Degrees: in Float) is
  begin
     if CheckIfValid(GetDegrees(Temp) + Degrees, GetScale(Temp)) = True then
	Temp.MyDegrees := GetDegrees(Temp) + Degrees;
     else
	New_Line; Put("Not a real Temperature");
     end if;
  end Upper;
  
  
      ----------------------------------------------
  -- Function: InputTemp(Temp)
  -- Recieve: A temperature
  -- PRE: Temperature is valid 
  -- POST: Temperature is modified to contian inputted values 
  ------------------------------------------------
  procedure InputTemp(Temp: in out Temperature) is
     Degree: Float;
     Scale, Char :Character;
  begin
     New_Line;
     Put("Enter the temperature with degrees and a scale: ");
     Get(Degree);
     Get(Char);
     Get(Scale);
     
     if CheckIfValid(Degree, Scale) = True then
	Temp.MyDegrees := Degree;
	Temp.MyScale := Scale;
	
     else
	New_Line; Put("Invalid Temp");
	
	InputTemp(Temp);
     end if;
  end InputTemp;
  
   end Temperature_Package;
  
bash-3.2$ cat temperature_tester.adb
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
bash-3.2$ gcc - [Kc temperature_package.adb
bash-3.2$ gcc  [K-c temperature_pac[K[K[Ktester.adb
bash-3.2$ gnatlink temperatru[K[Kure)[K_tester.ali
gnatlink: Failed to open binder output
bash-3.2$ gnatbind temperature_testee[Kr.ali
bash-3.2$ gnatlink temperature_tester.ali
bash-3.2$ ./temperature_e[Kter[Kster

Enter the base temp: 
Enter the temperature with degrees and a scale: 0 F

Enter the limit Temp 
Enter the temperature with degrees and a scale: 100 C

Enter the step value: 2.5



-1.77778E+01 C        0.00000E+00 F        2.55372E+02 K       
-1.63889E+01 C        2.50000E+00 F        2.56761E+02 K       
-1.50000E+01 C        5.00000E+00 F        2.58150E+02 K       
-1.36111E+01 C        7.50000E+00 F        2.59539E+02 K       
-1.22222E+01 C        1.00000E+01 F        2.60928E+02 K       
-1.08333E+01 C        1.25000E+01 F        2.62317E+02 K       
-9.44444E+00 C        1.50000E+01 F        2.63706E+02 K       
-8.05556E+00 C        1.75000E+01 F        2.65094E+02 K       
-6.66667E+00 C        2.00000E+01 F        2.66483E+02 K       
-5.27778E+00 C        2.25000E+01 F        2.67872E+02 K       
-3.88889E+00 C        2.50000E+01 F        2.69261E+02 K       
-2.50000E+00 C        2.75000E+01 F        2.70650E+02 K       
-1.11111E+00 C        3.00000E+01 F        2.72039E+02 K       
 2.77778E-01 C        3.25000E+01 F        2.73428E+02 K       
 1.66667E+00 C        3.50000E+01 F        2.74817E+02 K       
 3.05556E+00 C        3.75000E+01 F        2.76206E+02 K       
 4.44444E+00 C        4.00000E+01 F        2.77594E+02 K       
 5.83333E+00 C        4.25000E+01 F        2.78983E+02 K       
 7.22222E+00 C        4.50000E+01 F        2.80372E+02 K       
 8.61111E+00 C        4.75000E+01 F        2.81761E+02 K       
 1.00000E+01 C        5.00000E+01 F        2.83150E+02 K       
 1.13889E+01 C        5.25000E+01 F        2.84539E+02 K       
 1.27778E+01 C        5.50000E+01 F        2.85928E+02 K       
 1.41667E+01 C        5.75000E+01 F        2.87317E+02 K       
 1.55556E+01 C        6.00000E+01 F        2.88706E+02 K       
 1.69444E+01 C        6.25000E+01 F        2.90094E+02 K       
 1.83333E+01 C        6.50000E+01 F        2.91483E+02 K       
 1.97222E+01 C        6.75000E+01 F        2.92872E+02 K       
 2.11111E+01 C        7.00000E+01 F        2.94261E+02 K       
 2.25000E+01 C        7.25000E+01 F        2.95650E+02 K       
 2.38889E+01 C        7.50000E+01 F        2.97039E+02 K       
 2.52778E+01 C        7.75000E+01 F        2.98428E+02 K       
 2.66667E+01 C        8.00000E+01 F        2.99817E+02 K       
 2.80556E+01 C        8.25000E+01 F        3.01206E+02 K       
 2.94444E+01 C        8.50000E+01 F        3.02594E+02 K       
 3.08333E+01 C        8.75000E+01 F        3.03983E+02 K       
 3.22222E+01 C        9.00000E+01 F        3.05372E+02 K       
 3.36111E+01 C        9.25000E+01 F        3.06761E+02 K       
 3.50000E+01 C        9.50000E+01 F        3.08150E+02 K       
 3.63889E+01 C        9.75000E+01 F        3.09539E+02 K       
 3.77778E+01 C        1.00000E+02 F        3.10928E+02 K       
 3.91667E+01 C        1.02500E+02 F        3.12317E+02 K       
 4.05556E+01 C        1.05000E+02 F        3.13706E+02 K       
 4.19444E+01 C        1.07500E+02 F        3.15094E+02 K       
 4.33333E+01 C        1.10000E+02 F        3.16483E+02 K       
 4.47222E+01 C        1.12500E+02 F        3.17872E+02 K       
 4.61111E+01 C        1.15000E+02 F        3.19261E+02 K       
 4.75000E+01 C        1.17500E+02 F        3.20650E+02 K       
 4.88889E+01 C        1.20000E+02 F        3.22039E+02 K       
 5.02778E+01 C        1.22500E+02 F        3.23428E+02 K       
 5.16667E+01 C        1.25000E+02 F        3.24817E+02 K       
 5.30556E+01 C        1.27500E+02 F        3.26206E+02 K       
 5.44444E+01 C        1.30000E+02 F        3.27594E+02 K       
 5.58333E+01 C        1.32500E+02 F        3.28983E+02 K       
 5.72222E+01 C        1.35000E+02 F        3.30372E+02 K       
 5.86111E+01 C        1.37500E+02 F        3.31761E+02 K       
 6.00000E+01 C        1.40000E+02 F        3.33150E+02 K       
 6.13889E+01 C        1.42500E+02 F        3.34539E+02 K       
 6.27778E+01 C        1.45000E+02 F        3.35928E+02 K       
 6.41667E+01 C        1.47500E+02 F        3.37317E+02 K       
 6.55556E+01 C        1.50000E+02 F        3.38706E+02 K       
 6.69445E+01 C        1.52500E+02 F        3.40094E+02 K       
 6.83333E+01 C        1.55000E+02 F        3.41483E+02 K       
 6.97222E+01 C        1.57500E+02 F        3.42872E+02 K       
 7.11111E+01 C        1.60000E+02 F        3.44261E+02 K       
 7.25000E+01 C        1.62500E+02 F        3.45650E+02 K       
 7.38889E+01 C        1.65000E+02 F        3.47039E+02 K       
 7.52778E+01 C        1.67500E+02 F        3.48428E+02 K       
 7.66667E+01 C        1.70000E+02 F        3.49817E+02 K       
 7.80556E+01 C        1.72500E+02 F        3.51206E+02 K       
 7.94445E+01 C        1.75000E+02 F        3.52594E+02 K       
 8.08333E+01 C        1.77500E+02 F        3.53983E+02 K       
 8.22222E+01 C        1.80000E+02 F        3.55372E+02 K       
 8.36111E+01 C        1.82500E+02 F        3.56761E+02 K       
 8.50000E+01 C        1.85000E+02 F        3.58150E+02 K       
 8.63889E+01 C        1.87500E+02 F        3.59539E+02 K       
 8.77778E+01 C        1.90000E+02 F        3.60928E+02 K       
 8.91667E+01 C        1.92500E+02 F        3.62317E+02 K       
 9.05556E+01 C        1.95000E+02 F        3.63706E+02 K       
 9.19445E+01 C        1.97500E+02 F        3.65094E+02 K       
 9.33333E+01 C        2.00000E+02 F        3.66483E+02 K       
 9.47222E+01 C        2.02500E+02 F        3.67872E+02 K       
 9.61111E+01 C        2.05000E+02 F        3.69261E+02 K       
 9.75000E+01 C        2.07500E+02 F        3.70650E+02 K       
 9.88889E+01 C        2.10000E+02 F        3.72039E+02 K       
All tests passed!
bash-3.2$ ./temperature_tester

Enter the base temp: 
Enter the temperature with degrees and a scale: 0 K

Enter the limit Temp 
Enter the temperature with degrees and a scale: 212 F

Enter the step value: 20



-2.73150E+02 C       -4.59670E+02 F        0.00000E+00 K       
-2.53150E+02 C       -4.23670E+02 F        2.00000E+01 K       
-2.33150E+02 C       -3.87670E+02 F        4.00000E+01 K       
-2.13150E+02 C       -3.51670E+02 F        6.00000E+01 K       
-1.93150E+02 C       -3.15670E+02 F        8.00000E+01 K       
-1.73150E+02 C       -2.79670E+02 F        1.00000E+02 K       
-1.53150E+02 C       -2.43670E+02 F        1.20000E+02 K       
-1.33150E+02 C       -2.07670E+02 F        1.40000E+02 K       
-1.13150E+02 C       -1.71670E+02 F        1.60000E+02 K       
-9.31500E+01 C       -1.35670E+02 F        1.80000E+02 K       
-7.31500E+01 C       -9.96700E+01 F        2.00000E+02 K       
-5.31500E+01 C       -6.36700E+01 F        2.20000E+02 K       
-3.31500E+01 C       -2.76700E+01 F        2.40000E+02 K       
-1.31500E+01 C        8.32999E+00 F        2.60000E+02 K       
 6.85001E+00 C        4.43300E+01 F        2.80000E+02 K       
 2.68500E+01 C        8.03300E+01 F        3.00000E+02 K       
 4.68500E+01 C        1.16330E+02 F        3.20000E+02 K       
 6.68500E+01 C        1.52330E+02 F        3.40000E+02 K       
 8.68500E+01 C        1.88330E+02 F        3.60000E+02 K       
All tests passed!
bash-3.2$ exit

Script done on Sat Jun 23 17:08:41 2018
