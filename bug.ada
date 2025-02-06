```ada
function Add_One (X : Integer) return Integer is
begin
  return X + 1;
end Add_One;

procedure Example is
   Result : Integer := Add_One(5);
begin
   -- This line will cause issues
   Put_Line("Result: " & Integer'Image(Result));
end Example;
```