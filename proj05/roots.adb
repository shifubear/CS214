    -- roots.adb calculates the two roots of a quadratic
    --
    -- Input: a, a double, the coefficient of x^2,
    --        b, a double, the coefficient of x,
    --        c, a double, the coefficient of 1
    -- Output: The roots root1 and
    --                   root2 of the given quadratic
    --
    -- By: Shion Fukuzawa, for CS 214 at Calvin College
    -- Date: February 28, 2018
    --------------------------------------------------------------

    with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Generic_Elementary_Functions;
    use  Ada.Text_IO, Ada.Float_Text_IO;


    procedure roots is

    package functions is new Ada.Numerics.Generic_Elementary_Functions (Float);

    a, b, c, root1, root2 : Float;

    ------------------------------------------------
    -- quadraticRoots() returns the two roots of a quadratic.           
    -- Receive: a, a double, the coefficient of x^2,
    --          b, a double, the coefficient of x,
    --          c, a double, the coefficient of 1
    -- Passback: root1 - the first root,
    --           root2 - the second root.
    ------------------------------------------------
    -- Replace this line with definition of split() 
    function quadraticRoots(a: in Float; b: in Float; c: in Float; root1: out Float; root2: out Float) return Boolean is
    arg : Float := 0.0;
    begin
        if (a /= 0.0) then 
            arg := (b*b) - (4.0*a*c);
            if (arg >= 0.0) then
                root1 := (-b + functions.Sqrt(arg))/(2.0*a);
                root2 := (-b - functions.Sqrt(arg))/(2.0*a);
                return true;
            else 
                Put("*** quadraticRoots(): b^2 - 4ac is negative!");
                return false;
            end if;
        else
            Put("*** quadraticRoots(): a is zero!");
            return false;
        end if;
    end quadraticRoots;


    begin                                           -- Prompt for input
    Put("To find the roots of a quadratic, enter its roots: ");
    Put("Enter the coefficient of x^2: ");
    Get(a);
    Put("Enter the coefficient of x: ");
    Get(b);
    Put("Enter the coefficient of 1: ");
    Get(c);

    if quadraticRoots(a, b, c, root1, root2) then
        Put("The first root is ");
        Put(root1);
        Put_Line("");
        Put("and the second root is ");
        Put(root2);
        Put_Line("");
    end if;


    end roots;

