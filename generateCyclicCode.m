
freeze;

// main function
function generateCyclicCode(q, n)
printf("\n");

F:=GF(q);
P<x> := PolynomialRing(F);
Factor := Factorization(x^n - 1);
Factor;
Factor[2][1];
C := CyclicCode(n, Factor[2][1]);
C;

M := KMatrixSpace(F, 3, 6);

//M;










V:=VectorSpace(F,n);
R<x>:=PolynomialRing(GF(q));
H:=Factorization(x^n-1);
A:=VectorSpace(RationalField(),n-1) ! 0;
B:=VectorSpace(RationalField(),n-1) ! 0;

return 333;
end function;
