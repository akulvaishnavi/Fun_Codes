with Ada.Text_IO; use Ada.Text_IO;
with Ada.Integer_Text_IO; use Ada.Integer_Text_IO;

procedure Sum_Of_Two_Numbers is
   A, B, Sum : Integer;
begin
   -- Prompt the user to enter the first number
   Put_Line ("Enter the first number:");
   Get (A);

   -- Prompt the user to enter the second number
   Put_Line ("Enter the second number:");
   Get (B);

   -- Calculate the sum of the two numbers
   Sum := A + B;

   -- Display the result
   Put_Line ("The sum of " & Integer'Image(A) & " and " & Integer'Image(B) & " is " & Integer'Image(Sum));
end Sum_Of_Two_Numbers;
