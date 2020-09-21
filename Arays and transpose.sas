/** Additional Transformations **/
data new;
set sashelp.class;
keep _numeric_; /** it will keep the all the numerice variables **/
run;

data new;
set sashelp.class;
keep _character_; /** it will keep all the character variables **/
run;

data new;
set sashelp.class;
run;

/** it will deleting duplicates by using key variable wise **/
proc sort data=new out=new_sort1 nodupkey;
by age;
run;

proc sort data=new out=new_sort2 noduprecs;
by age;
run;

proc sort data=new out=uniques dupout=duplicates nodupkey;
by age;
run;


proc sort data=new out=new_sort1 nouniquekey;
by age;
run;

proc sort data=new out=new_sort2 nouniquerecs;
by age;
run;

proc sort data=new out=duplicates uniqueout=uniques nouniquekey;
by age;
run;

data new;
input id name $ salary;
cards;
101 sudhakar 25865
101 sudhakar 25865
102 dhana 21221
103 sravani 45222
;
run;


/** if the entire record is duplicate it will delete otherwise it won't delete **/
proc sort data=new dupout=new_sort noduprecs;
by id;
run;

/** it will create data set what ever the duplicate values in that key variable (only for duplicates) **/
proc sort data=sashelp.class  out=ds uniqueout=unique NOUNIQUEKEY;
by age;
run;

proc sort data=sashelp.class  out=ds uniqueout=unique nouniquerecs;
by age;
run;

proc sort data=sashelp.class out=classsort;
by sex;
run;


/*** transpose a dataset ***/

data studdata;
infile datalines;
input studname $ date_of_exam : date9. maths sceince social;
format date_of_exam date9.;
cards;
Sudhakar 01mar2009 45 55 65
sravani 01mar2009 15 45 77
ranjeeth 01mar2009 12 45 66
;
run;

proc sort data=studdata out=stud_doe_sort;
by  date_of_exam;
run;

proc transpose data=stud_doe_sort out=tanspose_studdata;
by  date_of_exam;
var maths sceince social; /** it will converts the columns to rows and rows to columns **/
id studname; /** it will converts rows heading into variable heading **/
run;


proc transpose data=tanspose_studdata out=tanspose_studdata1;
by  date_of_exam;
var Sudhakar sravani ranjeeth;
run;


data new;
input id name $ dept $ salary;
cards;
101 sudhakar SAS 100000
102 dhana Finance 582623
103 madhan SAP 785666
104 sravani SAS 784226
105 sailu HR 798122
;
run;
proc sort data=new;
by dept name;
run;

proc transpose  data=new out=transpose_sort;
id name;
by dept; /** id statement will converts row name into variable name **/
proc print;
run;


Data Vs;
Infile cards missover;
Input Subid Visit Test $ Units;
cards;
101 1 HR 72
102 1 HR 
103 1 HR 72
101 1 DBP 80
102 1 DBP 82
103 1 DBP  .
101 1 SBP 123
102 1 SBP 122
103 1 SBP 
;
run;

Proc sort data=Vs out=Vssort;
By subid Visit;
Run;

Proc Transpose data=vssort out=vstrans;
Id test;
Var units; 
By subid Visit;
Run;

Data Vsreplace;
Set vstrans;
Array a(3) HR DBP SBP;
Array b(3) _temporary_ (76 78 120);
Do i=1 to 3;
If a(i)=. Then a(i)=b(i);
End;
Drop I;
Run;
Proc print data=vsreplace;
Run;


data want;
set sashelp.class;
output; /* Output real observation */
if mod(_n_,3)=0;
array allnums {*} _numeric_ ;
array allchar {*} _character_ ;
do i=1 to dim(allnums); allnums{i}=.; end;
do i=1 to dim(allchar); allchar{i}=' '; end;
output; /* Output blank observation */
drop i;
proc print;
run;

data salesdata;
infile cards truncover;
input id name $ n1-n6 m1 $ m2 $ m3 $ m4 $ m5 $ m6 $  ;
cards;
101 sudhakar 10 20 30 40 50 60  A B C D E F
102 dhanaraj . 22 . 30 . 87 B . H . G H
;
run;

Data Sales_replace;
Set salesdata;
array allnums {*} n1-n6 ;
array allchar {*} $ m1 m2 m3 m4  m5 m6 ;
array var{6} $ _temporary_  ('A','B','C','D','E','F');
array temp{6} _temporary_ (60,50,40,30,80,90);

do i=1 to dim(allnums); 
if allnums{i}=. then allnums{i}=temp{i}; end;

do i=1 to dim(allchar);
if allchar{i}=' ' then allchar{i}=var{i}; end;

Drop I;
proc print;
Run;


