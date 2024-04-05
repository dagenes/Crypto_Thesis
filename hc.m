freeze;

function deneme(a)


a:= 3;
a;


return a * 5 ;

end function;


// main function
function hc23(q, n)
q2 := "\nbu sevdalar bosuna ley bu sevdalar bosuna\n";
q2;
startt := "\n*************** START OF FUNCTION ***************";
startt;


//Attach ("shurProduct.m");
import "shurProduct.m" : aaba;
aaba(q, n);

//c := deneme(5);
//c;


F := GF(q);


//SetOutputFile("out.txt");

//printf("deneme %o", n);
printf("Cn, Ck, Cd, Dn, Dk, Dd, D|n, D|k, D|d, C*Dn, C*Dk, C*Dd, (C*D)|n, (C*D)|k, (C*D)|d, privacy, rate\n");

a := "fasfads";
//a;

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

exitt := "\n\n*************** END OF FUNCTION *****************";
exitt;
return 23;
end function;
