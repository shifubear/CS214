-- namer.adb "test-drives" the Name type.
-- Begun by: Prof. Adams, CS 214 at Calvin College.
-- Completed by: Shion Fukuzawa, CS 214 at Calvin College.
-- Date: April 14, 2018
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;

procedure name_tester is

  NAME_SIZE : constant Integer := 8;

  type Name is 
    record 
      MyFirst, MyMiddle, MyLast : String(1..NAME_SIZE);
    end record;

  aName : Name ;


  ----------------------------------------------
  -- Init initializes a Name variable          -
  -- Receive: theName, the Name variable;      -
  --          First, the first name;           -
  --          Middle, the middle name;         -
  --          Last, the last name.             -
  -- Return: theName, its fields set to First, -
  --               Middle, and Last.           -
  ----------------------------------------------

  -- replace this line with the definition of Init()
  procedure Init (TheName : out Name; 
                    First, Middle, Last : in String) is
  begin 
    TheName.MyFirst := First;
    TheName.MyMiddle := Middle;
    TheName.MyLast := Last;
  end Init;

  ----------------------------------------------
  -- getFirst(Name) retrieves Name.myFirst     -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myFirst.                  -
  ----------------------------------------------

   function getFirst(TheName : in Name) return String is
   begin
      return TheName.MyFirst;
   end getFirst;


  ----------------------------------------------
  -- getMiddle(Name) retrieves Name.myMiddle   -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myMiddle.                 -
  ----------------------------------------------

   function getMiddle(TheName : in Name) return String is
   begin
      return TheName.MyMiddle;
   end getMiddle;

  ----------------------------------------------
  -- getLast(Name) retrieves Name.myLast       -
  -- Receive: theName, a Name.                 -
  -- PRE: theName has been initialized.        -
  -- Return: theName.myLast.                   -
  ----------------------------------------------

   function getLast(TheName : in Name) return String is
   begin
      return TheName.MyLast;
   end getLast;

  -----------------------------------------------
  -- getFullName(Name) retrieves Name as a String  -
  -- Receive: theName, a Name.                  -
  -- PRE: theName has been initialized.         -
  -- Return: a String representation of theName -
  -----------------------------------------------

   function getFullName(TheName : in Name) return String is
   begin 
      return TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast;
   end getFullName;

  ----------------------------------------------
  -- setFirst(Name) sets Name.myFirst          -
  -- Receive: newFirst, new first name.        -
  -- Receive: newName, the Name to change.     -
  -- PRE: theName has been initialized.        -
  ----------------------------------------------
  procedure setFirst (newFirst : in String; newName : in out Name) is
  begin 
    Init(newName, newFirst, getMiddle(newName), getLast(newName));
  end setFirst;

  ----------------------------------------------
  -- setMiddle(Name) sets Name.myMiddle        -
  -- Receive: newMiddle, new middle name.      -
  -- Receive: newName, the Name to change.     -
  -- PRE: theName has been initialized.        -
  ----------------------------------------------
  procedure setMiddle (newMiddle : in String; newName : in out Name) is
  begin 
    Init(newName, getFirst(newName), newMiddle, getLast(newName));
  end setMiddle;

  ----------------------------------------------
  -- setLast(Name) sets Name.myLast            -
  -- Receive: newLast, new last name.          -
  -- Receive: newName, the Name to change.     -
  -- PRE: theName has been initialized.        -
  ----------------------------------------------
  procedure setLast (newLast : in String; newName : in out Name) is
  begin 
    Init(newName, getFirst(newName), getMiddle(newName), newLast);
  end setLast;

  ----------------------------------------------
  -- lfmi(Name) displays name in lfmi order.   -
  -- Receive: theName, the Name to display.    -
  -- PRE: theName has been initialized.        -
  ----------------------------------------------
  function lfmi(theName : in Name) return String is
  begin 
    return TheName.MyLast & ", " & TheName.MyFirst & " " & TheName.MyMiddle(TheName.MyMiddle'First..TheName.MyMiddle'First);
  end lfmi;

  ----------------------------------------------
  -- Put(Name) displays a Name value.          -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

   procedure Put(TheName : in Name) is 
   begin
    Put(TheName.MyFirst & " " & TheName.MyMiddle & " " & TheName.MyLast);
    return;
   end Put;

  ----------------------------------------------
  -- read(Name) reads a Name value from cin.   -
  -- PRE: theName has been initialized.        -
  -- Receive: theName, a Name.                 -
  -- Output: theName, to the screen.           -
  ----------------------------------------------

   procedure read(TheName : in out Name) is 
    FirstName, MiddleName, LastName : String := "        ";  -- sets empty string 
    Chars_Read : Natural;
   begin
    Put("Enter your first name: ");
    Get_Line(FirstName, Chars_Read);
    Put("Enter your middle Name: ");
    Get_Line(MiddleName, Chars_Read);
    Put("Enter your last Name: ");
    Get_Line(LastName, Chars_Read);
      
    TheName.MyFirst := FirstName;
    TheName.MyMiddle := MiddleName;
    TheName.MyLast := LastName;
   end read;



begin
   Init(aName, "John    ", "Paul    ", "Jones   ");

   pragma Assert( getFirst(aName) = "John    ", "getFirst() failed");
   pragma Assert( getMiddle(aName) = "Paul    ", "getMiddle() failed");
   pragma Assert( getLast(aName) = "Jones   ", "getLast() failed");
   pragma Assert( getFullName(aName) = "John     Paul     Jones   ", 
                    "getFullName() failed");
   Put(aName); New_line;
   Put("All tests passed!"); New_line;

   setFirst("Phil    ", aName);
   pragma Assert( getFirst(aName) = "Phil    ", "setFirst() failed");
   setMiddle("Derek   ", aName);
   pragma Assert( getMiddle(aName) = "Derek   ", "setMiddle() failed");
   setLast("Adams   ", aName);
   pragma Assert( getLast(aName) = "Adams   ", "setLast() failed");
   pragma Assert( lfmi(aName) = "Adams   , Phil     D");
   
   Read(AName);
   Put(aName); New_line;

end name_tester;

