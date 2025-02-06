```ada
function Add_One (X : Integer) return Integer is
   Result : Integer;
begin
  -- Check for potential overflow before adding 1
  if X = Integer'Last then
     raise Constraint_Error;
  else
     Result := X + 1;
  end if;
  return Result;
end Add_One;

procedure Example is
   Result : Integer;
begin
   begin
      Result := Add_One(Integer'Last);
   exception
     when Constraint_Error =>
       Put_Line("Integer overflow occurred!");
       return;
   end;
   Put_Line("Result: " & Integer'Image(Result));
end Example;
```