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
  
