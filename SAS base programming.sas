

/*# Sas_Base_Sample_Solution*/
/**/
/*https://www.sas.com/content/dam/SAS/documents/technical/training/en/sample-questions-base-programming-specialist.pdf*/
/*Project 1*/

DATA work.sortedshoes;
set sashelp.shoes;
run;
proc sort data= work.sortedshoes;
 by descending Product Sales;
 run;

proc print data=work.sortedshoes;
var product Region;
run;

Project 2

DATA work.shoerange;
set sashelp.shoes;
length salesrange  $8;
if sales  < 100000 then salesrange= "lower";
else if 100000 <= sales <= 200000 then salesrange= "middle";
else if sales > 200000 then salesrange= "upper";
run;

proc means data=work.shoerange;
  class salesrange ;
run;

project 3

data work.lowchol work.highchol work.misschol;
 set sashelp.heart;
 if (cholesterol lt 200 and cholesterol ne ".") then output work.lowchol;
 \* missig value is counted when there is less than\*
 else if cholesterol ge 200 then output work.highchol;
 else if cholesterol eq "." then output work.misschol;
run;






# Format-and-freq-mean
Formatting num variable and determine the frequency as a char var
ata sanjay;
set sashelp.cars;
run;

proc sort data=sashelp.cars out= sanjay1 (keep=make type origin msrp mpg_city);
by make;
run;



proc format;

value fmtmsrp low -<20000 = "Low priced car"
              20000 -<40000 = "Medium priced car"
			  40000 - high = "High priced car";
			  run;
data sanjay2;
set sanjay1;
new_msrp= put(msrp,fmtmsrp.);
origin_type = catx('-', type, origin);
run;

proc contents data=sanjay2;
run;

Proc means data=sanjay2;
class origin_type;
var MPG_City;
run;
