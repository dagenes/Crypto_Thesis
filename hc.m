freeze;

Attach ("shurProduct.m"); import "shurProduct.m" : shur;
Attach ("generateCyclicCode.m"); import "generateCyclicCode.m" : generateCyclicCode;
Attach ("CyclomicCoset.m"); import "CyclomicCoset.m" : generateCycCoset;
import "CyclomicCoset.m" : unionCycCosets;

// define a inner function.. just for try
function deneme(a)
a:= 3;
a;
return a * 5 ;
end function;
// end of function

// start of main function
function hc23(q, n)
printf("\nbu sevdalar bosuna ley bu sevdalar bosuna\n");
printf("\n*************** START OF FUNCTION ***************");

U1 := generateCycCoset(q,n,7);
U2 := generateCycCoset(q,n,10);
U3 := generateCycCoset(q,n,9);
U1 := unionCycCosets(U1,U2,n);
U1 := unionCycCosets(U1,U3,n);

U1;

/*
useShur := false;

if useShur then
  shur(q, n);
else
  generateCyclicCode(q, n);
end if;

*/


F := GF(q);
//SetOutputFile("out.txt");

//printf("deneme %o", n);
printf("Cn, Ck, Cd, Dn, Dk, Dd, D|n, D|k, D|d, C*Dn, C*Dk, C*Dd, (C*D)|n, (C*D)|k, (C*D)|d,
    privacy, rate\n");


/*

for kc in [1 .. n-1 ] do
    for kd in [1 .. n-1 ] do

      kPerpd := n - kd;

      kCStarD := n;
      kCStarDPerp := n - kCStarD;

      dc := BKLCUpperBound(F, n, kc);
      dd := BKLCUpperBound(F, n, kd);
      dPerpd := BKLCUpperBound(F, n, kPerpd);
      dCStarD := BKLCUpperBound(F, n, kCStarD);
      dCStarDPerp := BKLCUpperBound(F, n, kCStarDPerp);

      privacy := dPerpd -1;
      rate := IntegerToString(kCStarDPerp) cat "/" cat IntegerToString(n);

     printf "%o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o, %o \n",
              n, kc, dc, n, kd, dd, n, kPerpd, dPerpd,  n, kCStarD, dCStarD,  n,
              kCStarDPerp, dCStarDPerp, privacy, kCStarDPerp, rate ;
    end for;
end for;



*/




//UnsetOutputFile();

printf("\n\n*************** END OF FUNCTION *****************");
return 23;
end function;
