* This DO Index loop uses a index variable for its start and end value.  */
/* The SAS statements are repeatedly executed until the final value of the index variable is reached. */
/*  */
/* Syntax */
/* DO indexvariable = initialvalue to finalvalue ; */
/* . . . SAS statements . . . ; */
/* END; */
/* Example */;


DATA MYDATA1;
SUM = 0;
DO VAR = 1 to 5;
   SUM = SUM+VAR;
   output;
END;
RUN;

/* sum=0+1=1 */
/* sum=1+2=3 */
/* sum=3+3=6 */
/* sum=6+4=10 */
/* sum=10+5=15 */

/* This DO WHILE loop uses a WHILE condition. The SAS statements are
 repeatedly executed until the while condition becomes false. */
/*  */
/* Syntax */
/* DO WHILE (variable  condition); */
/* . . . SAS statements . . . ; */
/* END; */
/* Example */

DATA MYDATA;
SUM = 0;
VAR = 1;
DO WHILE(VAR<6) ;
   SUM = SUM+VAR;
   VAR+1;
   output;
END;
   PROC PRINT;
   RUN;

/*  1<6 */
/*  sum=0+1=1 */
/*  2<6 */
/*  sum=1+2=3 */
/*  3<6 */
/*  sum=3+3=6 */
/*  4<6 */
/*  sum=6+4=10 */
/*  5<6 */
/*  sum=10+15=15 */
/*  6<6 */
 
/* The DO UNTIL loop uses a UNTIL condition. The SAS statements are repeatedly 
executed till the UNTIL condition becomes TRUE. */
/*  */
/* Syntax */
/* DO UNTIl (variable  condition); */
/* . . . SAS statements . . . ; */
/* END; */

/* Example */

DATA MYDATA;
SUM = 0;
VAR = 1;
DO UNTIL(var>5);
   SUM = SUM+VAR;
   VAR+1;
 output;  
END;
   PROC PRINT;
   RUN;
   
   
/*     */
/*    1>5 */
/*    sum=0+1=1 */
/* 1+1=2; */
/*    2>5 */
/*    sum=1+2=3 */
/* 2+1=3; */
/*    3>5 */
/*    sum=3+3=6 */
/*    4>5 */
/*    sum=6+4=10 */
/*    5>5 */
/*  sum=10+5=15 */
/* 6>5 */

/* Understanding the concept of Increment-Decrement using by*/
data NLoop;
res=10;
do i=10 to 1 by -3;
res=res+i;
output;
end;
run;

data Nloop_1;
res=10;
do i=-10 to 1 by 1;
res=res+i;
output;
end;
run;


data ds;
do i=1 to 12;
do j=2019 to 2020;
date=nwkdom(2,7,i,j); put date=date9.;
output;
end;
end;
format date date9.;
drop i j;
proc sort;
by date;
run;
proc print data=ds;
format date date9.;
run;


data test;
set sashelp.class;
if mod(_n_,4)=0 then output test; / * mod function will give the reaminder value **/
run;




