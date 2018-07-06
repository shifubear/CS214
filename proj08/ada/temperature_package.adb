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
  
