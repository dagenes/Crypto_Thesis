
freeze;

// main function
function aaba(q, n)

startt := "\n SUB FUNCTION ";
startt;

F:=GF(q);
V:=VectorSpace(F,n);
R<x>:=PolynomialRing(GF(q));
H:=Factorization(x^n-1);
A:=VectorSpace(RationalField(),n-1) ! 0;
B:=VectorSpace(RationalField(),n-1) ! 0;
Schurall:=0;
CycBound:=0;
CycBoundSchur:=0;
S:=1;
i:=0;

for V1 in H do

  i:=i+1;
  f:=V1[1];
  l:=V1[2];
  S:=S*(l+1);
  if i eq 1 then
    T1:={ R | f^i : i in {1 .. l}} join {R | 1};
  else
    T1:=car<T1,{ R | f^i : i in {1 .. l}} join {R | 1}>;
    end if;
end for;

if i eq 1 then
  T:=T1;
else
  T:=Flat(T1);
end if;


for f in T do

  if i eq 1 then
    g:=f;
  else
    g:=1;
    for j:= 1 to #H do
      g:=g*f[j];
    end for;
  end if;

  C:=CyclicCode(n,g mod (x^n-1));
  if Dimension(C) eq 7 then

  for f2 in T do

    if i eq 1 then
      g2:=f2;
    else
      g2:=1;
      for j2:= 1 to #H do
        g2:=g2*f2[j2];
      end for;
    end if;


    D:=CyclicCode(n,g2 mod (x^n-1));

    kc:=Dimension(C);
    kd:=Dimension(D);
    //printf "%o %o\n", kc, kd ;
    if Dimension(D) eq 42 then

  //  if Dimension(C) ne n and Dimension(C) ne 0 and Dimension(D) ne n and Dimension(D) ne 0 then
      L:= { h1*h2 : h1 in Basis(C), h2 in Basis(D) };
      Schur:= sub<V | L>;

      a := Dimension(Schur);

      if a ne n and a ne n-1 then
        printf "%o %o %o\n", kc, kd, a ;
      end if;
      //g;
      //k;
      //f;
      //printf("mahmut\n\n");

    end if;
  end for;

end if;
end for;

exitt := "\n RETURN....";
exitt;
return 333;
end function;
