
// cyclic coset generator method for given s.
function generateCycCoset(q, n, s);
printf("\n");

U := [* *] ;
Append(~U, s mod n);

// generate coset list
for i in [1 .. n] do
  if q^i mod n eq 1 then
    a :=i;
    break;
  else
    Append(~U, ((s * q^i) mod n));
  end if;

end for;

U;
return U;

end function;



// merge two list and check common elements
function unionCycCosets(U1, U2, n);
printf("\nunion:\n");

for i in U2 do

  isInList :=false;
  for j in U1 do
    if (i mod n) eq (j mod n) then
      isInList :=true;
      break;
    end if;
  end for;

  if not isInList then
    Append(~U1, (i mod n));
  end if;
end for;

// merged list
return U1;

end function;
