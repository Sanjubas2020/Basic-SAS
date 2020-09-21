

/* SAS stands for the statical analytical system and its roles are: */

* data steps, creat new date, Reading raw data files, manuipulate data with Functions, combining sas data sets;
* Proc steps: sort data, prepare Report/summary produres, statistical analysis;

/* Advance SAS */

* SQL;
* Macros;

/*windows in SAS*/

* Editor window: write the sas program and submit/execute using base sas and advances sas code;
*DATA step, PROC step;
*log window: check if the program is running successfully or not checking for errors;
*result window: reports resultes are generated on to output window by using proc step statement;


/** syntax for creating/reading a data set **/

data libraryrefname.outputdatasetname;
set libraryrefname.inputdatasetname;
run;

data perm.data4;
set sashelp.class;
run;

data data3;
set sashelp.class;
run;

/** syntax for printing procedure **/
procedure print data=libraryrefname.inputdatasetname;
run;

proc print data=sashelp.class noobs;
run;


*libname is the shortcut or the bridge to access the folder containig the sas files;

libname sanjay 'c:\sanjaysas';

data new;
set sanjay.classname; /*you cannot read the excel file with mentioing the engine*/
run;

*I have excel file in c drive with name sanjay and three sheets alfred, barabara and alice;

*i can extract each file using the libname statement; 

libname class xlsx  'c:\sanjaysas\Sanjay.xlsx';
data new;
set class.Alfred;/
run;


data new;
set class.'Barbara'n;
run;

data new;
set class.'Alice'n;
run;

*we can also use the import procedure to access the SAS files;

proc import datafile='c:\Sanjaysas/Sanjay.xlsx' out=sample dbms=xlsx replace;
sheet='Barbara';
run;

proc import datafile='c:\Sanjaysas/Sanjay\Alfred.csv' out=sample1
dbms=csv replace;
run;

proc import datafile='c:\Sanjaysas/Sanjaytext1.txt' out=sample1
dbms=dlm replace;
run;


proc export  data=sashelp.class outfile='C:\sanjaysas\Manira.xlsx' 
dbms=xlsx replace;
run;



data empsalary;
input fnid frenname $ dept $ salary;
cards;
101 Sanjay A  75000
102 Manira B 50000
103 Anup C 55000
104 Muni D 60000
105 Bijaya E 65000
106 Susma A 75000
107 Ajmat B 50000
108 Prafulla C 55000
109 Andy D 60000
110 Alison E 65000
;
run;

* we can use data step to add a variable;

data empsalbonus;
set empsalary;
bonus=salary*10/100;

proc print;
run;

data new1;
set empsalbonus;
new_variable=salary/((bonus*100)*2);

proc print;
run;


data new2;
weight=80;
height=96;
new_var1=weight/((height/100)*2); 
newvar2=weight+height;
newvar3=weight-height;
run;

/* it will sort with asscending or descending data **/
proc sort data=sashelp.class out=clsssort;
by sex  descending age;
run;


data new;

retain sex name height; /*list the variable the way mentieod and add other variable*/
set sashelp.class;
run;

/*** keep and drop **/ /*** keep and drop **/
/** drop= dataset options controls which variables to be dropped **/
/** keep= dataset options controls which variables to be keep **/

data new(keep= name sex age);
set sashelp.class;
run;

data new(drop= name sex age); /** option **/
set sashelp.class;
run;

data new;
set sashelp.class;
drop  name sex age; /** statement **/
run;

data new;
set sashelp.class (drop=age); /*we can drop in set statment so that it doesnot go to pdv*/
run;

data new;
set sashelp.class;
keep  name sex age;
run;


/** firstobs and obs **/ 

data new;
set sashelp.class(firstobs=8 obs=12);
run;

/***  PRINT Procdure ****/
/***  PRINT Procdure ****/
proc sort data=sashelp.class out=classsort;
by sex;
run;


proc print data=classsort label n;/*gives the total number of obsevations*/
var name sex age height weight; /** defining the variable names **/
sum age height weight; /** giving the total for variables which you have mentioned **/
by sex; /** it is grouping or sorting the data**/
pageby sex; /** it will print report pageby page **/
id sex; /** it converts section heading into variable heading **/
label name='customer name' sex= 'gender' age= 'customr age' height='customer height' weight='customer weight'; 
title 'Sanjay Practice data';
footnote1 'this is system generated output';
footnote2 'Thank you';
title;
footnote;
run;


/** subsetting the data using where condition **/; 

/** > ,< ,>= ,<=, ^= ,IN ,AND ,OR ,NOT ,NOT IN, BETWEEN, 
CONTAINS, LIKE, GT, LT, GE, LE,NE, &, |, **/;

data new1;
set sashelp.class;
where age > 15; /*gt operators*/
run;

data new1;
set sashelp.class;
where age < 15;/*lt operators*/
run;

data new1;
set sashelp.class;
where age >= 15; /*greater than or equal to operators*/
run;

data new1;
set sashelp.class;
where age <= 13;
run;

data new1;
set sashelp.class;
where age ^= 15; /*not equal operators*/
run;

data new1;
set sashelp.class;
where age in (15,16,14);
run;

data new1;
set sashelp.class;
where age in (13,15) and sex='M';
run;

data new1;
set sashelp.class;
where age in (13,15) or sex='F';
run;

data new1;
set sashelp.class;
where age not in (13,15);
run;

data new1;
set sashelp.class;
where age between  14 and 16;
run;

data new1;
set sashelp.class;
where sex contains 'F' and age in (11);
run;


data new1;
set sashelp.cars;
where make contains 'Acura' ;
run;

data new1;
set sashelp.cars;
where make like 'Ac%';
run;

data new1;
set sashelp.cars;
where make like '%i';
run;


data new1;
set sashelp.cars;
where make like '_u%';
run;

data new1;
set sashelp.class;
where age gt 15;
run;

data new1;
set sashelp.class;
where age lt 15;
run;

data new1;
set sashelp.class;
where age ge 15;
run;

data new1;
set sashelp.class;
where age le 13;
run;

data new1;
set sashelp.class;
where age ne 15;
run;

data new1;
set sashelp.class;
where age in (14,15) & sex='M';
run;

data new1;
set sashelp.class;
where age in (14,15) | sex='M';
run;

/*** if condition ***/;

data male other female;
set sashelp.class;
bonus=height*10/100;
if sex='M' then output male;
else if sex='other' then output other;
else  output female;
run;


data sanjay.empsalary;
input fnid frenname $ dept $ salary;
cards;
101 Sanjay A  75000
102 Manira B 50000
103 Anup C 55000
104 Muni D 60000
105 Bijaya E 65000
106 Susma A 75000
107 Ajmat B 50000
108 Prafulla C 55000
109 Andy D 60000
110 Alison E 65000
;
run;

data capital_Manira Capital_sanjay;
set empsalary;
if upcase(frenname)='SANJAY' then do;
 revenue=sum(salary*2500,salary*1500); 
 output capital_Sanjay;
 end;
else if upcase(frenname) ='MANIRA' then do;
revenue=sum(salary*100,salary*50); 
output Capital_Manira;
end;
run;  


proc contents data=sashelp.class ;
run;

proc contents data=sashelp.class varnum;/*returns the number of a variable's position within a dataset*/
run;

proc contents data=sashelp._all_  ;
run;

proc contents data=sanjay._all_  ;
run;

proc contents data=sanjay._all_  nods; /*give the directory only*/
run;


/** format **/

* Presentation purpose /display/ appearence of the storage value;
* Storage value can be character or numeric but the presentation of the value is character only */

* user difined format :- is defined by sas programmer using proc format:;
* systen defined format :- which are available by default with the sas system;
* - comma12., comma14., dollar14.2,  dollar20.;
* Note:  Formats by default are stored in work.formats that folder is called catalog folder;

data new;
set sashelp.class;
format age dollar8.2; /*put the dollar sign and decimal value*/
run;

proc format;
value $gender
'M' = 'MALE'
'F'='FEMALE' ;
value ages
11='kid'
12='child'
13='minor'
14='major';
run;

data new2;
set sashelp.class;
format sex $gender. age ages.;
proc print;
run;

proc print data=sashelp.class;
format sex $gender. age ages.;
run;

/* RETAIN STATEMENT */
* retain statement creates an accumulating variable, by storing the value in memory;
*adding to the subsequent values until it reaches the last observations of the input dataset;
* - by default the new variable creates missing values, so intialize the value to zero(0);

data sanjay.empsalary;
input fnid frenname $ dept $ salary;
cards;
101 Sanjay A  7500
102 Manira B 5000
103 Anup C 5500
104 Muni D 6000
105 Bijaya E 6500
106 Susma A 7500
107 Ajmat B 5000
108 Prafulla C 5500
109 Andy D 6000
110 Alison E 6500
;
run;

/** SUM function **/
/** sum function will ignore missing values **/

data new2;
set sanjay.empsalary;
retain saleamount;
saleamount=sum(saleamount,salary);
run;

/** SUM assignament statement,ignores the mising values**/

data new3;
set sanjay.empsalary;
sanjay+salary;
run;

/** + operator **/
/** + operator will not ignore missing values **/
data new4;
set sanjay.empsalary;
retain var 0;
var=var+salary;
run;

data sanjay1;
input fnid frenname $ dept $ salary;
cards;
101 Sanjay A  7500
102 Manira B 5000
103 Anup C .
104 Muni D 6000
105 Bijaya E 6500
106 Susma A 7500
107 Ajmat B 5000
108 Prafulla C 5500
109 Andy D 6000
110 Alison E 6500
;
run;
data new5;
set sanjay1;
retain var 0;
var=var+salary;
run;


/*By group processing: First and Last Variable*/

* Summarizing the data values across a grouping data;
* Specify grouping variable by statement in datastep and the pre request to sort the data is necesary;
* Creates a temporary variable for each variable specified on by statement;
*First.by variable name and last.by variablename;
*First. and last. is used for controlling where to stop and when to stop accumulating the data value in the group;
* First.byvariablename =1 if it is the first observation of the grouping data, otherwise=0;
*last.byvariablename =1 if it is the last observation of the grouping data, otherwise=0;


proc sort data=sashelp.class out=class_sort;
by  sex;
run;

data new_one;
set class_sort;
by  sex;
if first.sex then n=0; n+1; 						
if last.sex then output;
run;

data new_one;
set class_sort;
by sex;
if first.sex then do;
 n=0;
 totalage=0;
end;
 n+1;
 totalage+age;
if last.sex then output;
run;


/* READING RAW DATA */

* infile:- infile statement the physical location of rawdata file;
* input:- input statements variable and its datatype to be created on output dataset;
* length:- length statement defines the lengths for the variable;

proc import datafile='c:\sanjaysas\sanjaytext1.txt' out=sample1
dbms=dlm replace;
run;


data sample2;
infile 'c:\sanjaysas\sanjaytext1.txt'; /*default is the space separated file*/
input  name $ sex $ age height weight;
run;


data sample3;
infile 'c:\sanjaysas\sanjaytext2.txt' dsd; /*for comma separted text file*/
input name $ sex $ age height weight;
run;

data sample4;
infile 'c:\sanjaysas\sanjaytext4.txt' dlm=',@';/*what is the function of this commm , here*/
input name $ sex $ age height weight;
run;

data sample5;
infile 'c:\sanjaysas\sanjaytext5.txt' dlm=',$';
input name $ sex $ age height weight;
run;

data sample6;
infile 'c:\sanjaysas\sanjaytext3.txt' dlm=',,';
input name $ sex $ age height weight;
run;




/* INPUT METHODS: */

* 1) List Input Method;
* 2) Named Input Method;
* 3) Column Input Method;
* 4) Format Input Method;
* 5) Absolute Input Method;
* 6) Mixed Input Method;
* 7) Advanced List Input Method;

* 1) List Input Method;
* This is the default input method of SAS;
* In data, values are separated by at least one space;

* Note :;
* -> Unable to control Embedded spaces;
* It can only work for Within the data, any character data value does not contain embedded spaces;


* 1) List Input Method;

data new1; /* spaces datam number of spaces may vary **/
infile cards;
length fname $ 14 lname $ 14 city $ 12 age 3;
input fname $ lname $ city $ age;
cards;
Sanjay Basnet Damaulli   35
Manira   Gautam   Kathmandu   33
Anup Bhandari  Chitwan 32
Muni Bhandari Kathmandu 31
Bijaya Upadhaya Kathmandu 38
Susma Adhikari Kavre 32
Ajmat Ali Tanahun 35
Prafulla Regmi Chitwan 33
Andy Neal Georgia 36
Alison Reeves Raleigh 32
;
run;



data list_input_method;
length name $12 sex $ 12 age 3 weight 5 height 5;
infile 'c:\sanjaysas\sanjaytext1.txt';
input name $ sex $ age weight height ;
run;


/* 2) NAMED INPUT METHOD */
* In raw data, values are existed with variable names, then we should use named input method for data reading;
* Here, no problem with embedded spaces;

* Named Input Method;
* length for character variables is 32767 bytes;
* length for numeric variables is 8 bytes;

data new;
infile cards;
length name $ 18 ;
input number= name= $ Age= ;
cards;
number= 9000846590 name=Sanjay Age=37
number= 9989708642 name= Manira age= 28
number= 9000846591 name=Anup bhandari Age= 34
number= 9989708642 name= Munni Regmi Age= 40
;
run;


data Named_input_method;
length name $ 18 ;
infile 'c:\sanjaysas\sanjaytext1.txt';
input name= $ sex= $ Age= weight= height=;
run;


/* 3) COLUMN INPUT METHOD */
* Read the values using column numbers;
* Application;
* * COLUMN INPUT METHOD;

data empdet;
infile cards;
input empid 1-5 empname $ 9-26 Designation $ 30-40 ;
cards;
1001 Kiran kumar Tester
1002 Kranti kumar panda Analyst
1003 pawan kumar saha Programmer
1004 Laxmikant Parida Manager
;
run;

data column_input_method;
infile infile 'c:\sanjaysas\sanjaytext1.txt' Truncover ;
input empid 1-5 empname $ 9-26 Designation $ 30-40 ;
run;


/* 4) FORMAT INPUT METHOD */

* Read the data using column pointers;
* 3 types of column pointers are available;
* Column skip pointer (+n);
* Column Hold pointer (@n);
* Column range pointer (n.);
* Column skip pointer (+n) here n represents skip number of columns;
* Column Hold pointer (@n) here n represents column number;
* Column range pointer (n.) here n represents read number of columns;
* In Format Input Method, we use column hold pointer and column skip pointer;
/* Application > */
/* * FORMAT INPUT METHOD; */
data empdet;
infile cards;
input empid 4. +4 name $ 18. +3 Des $ 10. ;
cards;
1001 Kiran kumar Tester
1002 Kranti kumar panda Analyst
1003 pawan kumar saha Programmer
1004 Laxmikant Parida Manager
;
run;

data Format_input_method;
infile '/folders/myfolders/column input method.txt' Truncover ;
input @1 empid +4 name $ 18. +3 Des $ 10. ;
run;


/* 5) ABSOLUTE INPUT METHOD: */
/* Read the data using point controls/column pointers. */
/* In Absolute Input Method, we use column hold pointer and column
range pointer. */
/* */
/* Application > */
/* Absolute Input Method */
/* * Read the values using point controls or column pointer; */


data new;
infile cards;
input @1 empid 4. @9 name $ 18. @30 Des $ 10. ;
cards;
1231 Kiran kumar Tester
1102 Kranti kumar panda Analyst
1103 pawan kumar saha Programmer
1104 Laxmikant Parida Manager
;
run;


data Absolute_input_method;
infile '/folders/myfolders/column input method.txt' Truncover ;
input @1 empid 4. @9 name $ 18. @30 Des $ 10.;
run;


/* 6) MIXED INPUT METHOD */
/* To use multiple input method features in one input statement/
single input statement. */
/* */
/* Application > */
/* * Mixed input method; */

data empdetMIM;
infile cards;
input @1 empid 4. name $ 9-28 Des $ 30-45 ;
cards;
1001 Kiran kumar Tester
1002 Kranti kumar panda Analyst
1003 pawan kumar saha Programmer
1004 Laxmikant Parida Manager
;
run;



data mixed_input_method;
infile '/folders/myfolders/column input method.txt' Truncover ;
input @1 empid 4. name $ 9-28 Des $ 30-45;
run;
/* 7) Advanced List Input Method */
/* In this method, format modifiers are used. */
/* Ampersand (&) Modifier : It controls the SAS system, values are
separated by more than one space.
 When we use the ampersand format modifier, two blanks are required to signal the end of a data value.
 *It can effectively deal with embedded spaces/blanks;
* We can also control length of the variable;
/* It recognizes */
/* One single blank --> Embedded blank */
/* More than one blank --> Delimiter blank */
/* Colon(:) Modifier : It controls the length of the variable and call the informat techniques. */
/* Advance List Input Method */
/* & Modifier*/;
data names ;
infile cards;
input eid empname & $ 19. Des $ 18. ;
cards;
101 Kiran Kumar varma Tester
102 Swati Vohra Finance Analyst
103 Kranthi Bommasani Programmer
;
run;


data names ;
infile cards;
input eid empname & $ 19. Des & $18. date:ddmmyy10.;
format date date9.;
cards;
101 Kiran Kumar varma Tester 01/02/2020
102 Swati Vohra Finance Analyst 02/03/2020
103 Kranthi Bommasani Programmer 03/04/2020
;
run;

/* Infile Options: */
/* These all infile options should be used for list input method.
these are */
/* DSD (Data separated Delimiter/ Data sensitive Delimiter) */
/* DLM or Delimiter */
/* Flowover default behavior. The DATA step simply reads the next record into the input buffe*/
/* Stopover causes the DATA step to stop processing if an INPUT statement reaches the end of the current record*/
/* Missover he DATA step assigns a missing value for all variables that do not have values.*/
/* Truncover causes the DATA step to assign the raw data value to the variable even if the value is shorter than expected by the INPUT statement*/
/* Firstobs, Obs. */
/** list input method(it is a default method os SAS reading raw data)
**/


Data new;
input subid visit $ Dose $;
cards;
101 visit1 05mg
102 visit1 10mg
103 visit1 15mg
101 visit2 05mg
102 visit2 10mg
103 visit2 15mg
101 visit3 05mg
102 visit3 10mg
103 visit3 15mg
;
run;


data new;
infile cards dlm=',@!'; /* dsd or dlm=',' both are same functionality*/
input subid visit $ Dose $;
cards;
101,visit1,05mg
102@visit1,10mg
103,visit1,15mg
101,visit2,05mg
102!visit2,10mg
103,visit2,15mg
101,visit3,05mg
102,visit3,10mg
103,visit3,15mg
;
run;
data new;
infile cards dsd;
input subid visit $ Dose $;
cards;
101,visit1,05mg
102,visit1,10mg
103,visit1,15mg
101,visit2,05mg
102,visit2,10mg
103,visit2,15mg
101,visit3,05mg
102,visit3,10mg
103,visit3,15mg
;
run;
data new;
infile cards dlm='%';
input subid visit $ Dose $;
cards;
101%visit1%05mg
102%visit1%10mg
103%visit1%15mg
101%visit2%05mg
102%visit2%10mg
103%visit2%15mg
101%visit3%05mg
102%visit3%10mg
103%visit3%15mg
;
run;
Data new;
infile cards dlm=' ,&|' missover;
input subid visit $ Dose $ amount;
cards;
101,visit1,05mg,458
102,visit1,10mg,489
103,visit1,15mg
101&visit2|05mg
102 &visit2&10mg
103&visit2&15mg
101&visit3|05mg
102|visit3|10mg
103|visit3|15mg
;
run;
/** missover:- it controls the sas system whenever the
missing values are there in the end of the record **/
Data demo;
infile cards missover;
input subid Age gender $ race $ color $ height weight ;
cards;
101 23 Male Asian White 5.6 67
102 45 Female Asian
103 20 Male Asian Black 4.5 56
104 40 Female Asian Black
105 23 Male
106 34 Female Asian Black 7.3 87
;
run;

/*Truncover*/
Data demo1;
infile cards truncover;
input subid Age gender $ race $ color $ height weight ;
cards;
101 23 Male Asian White 5.6 67
102 45 Female Asian
103 20 Male Asian Black 4.5 56
104 40 Female Asian Black
105 23 Male  
106 34 Female Asian Black 7.3 87
;
run;

data new;
infile '/home/u45022572/sasuser.v94/dilip.txt' dlm=', ';
input empid name $ location $ S1 S2 ;
run;
/* @ and @@ (single trailing and double trailing) @ is default */
/** @@:- it holds the input record for the execution of the across
records
across records means multiple records in the same line **/
data new;
infile datalines;
input id name $ salary ;
cards;
101 sudhakar 526563 102 dhana 8465512 103 prit 545125 104 sravani
875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646
109 manohar 87845 110 raghava 78974
;
run;
data new;
infile datalines;
input id name $ salary @@;
cards;
101 sudhakar 526563 102 dhana 8465512 103 prit 545125 104 sravani
875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646
109 manohar 87845 110 raghava 78974
;
run;
data new;
infile datalines;
input id name $ salary @@;
cards;
101 sudhakar 526563
102 dhana 8465512
103 prit 545125 104 sravani 875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646
109 manohar 87845 110 raghava 78974
;
run;
data test_2;
input number_1 number_2 number_3;
format number_1 number_2 number_3 best16.;
Cards;
15.436244392315334 15.536244392315334 15.736244392315335
15.536244392315334 15.736244392315335 15.936244392315334
15.836244392315335 15.636244392315334 16.036244392315332
;
Proc print data=test_2;
run;
data new;
infile cards dlm='!@#$%^&*()';
input id name $ salary;
cards;
101!@#$%^&*()sudhakar!@#$%^&*()500000
102!@#$%^&*()dhana!@#$%^&*()783232
103!@#$%^&*()gangadhar!@#$%^&*()789227
104!@#$%^&*()martin!@#$%^&*()754562
105!@#$%^&*()aymen!@#$%^&*()5451212
;
run;



/** pdv (program data vector) **/
  *Logical Memory Unit and storage Place of variables Observations;
  * SAS creates input buffer, whenever system reach Input Statement;
  * PDV interacts with input Buffer to collect record by record and run;
*data error checking using two automatic variables;
/* these are : */
/* _N_ */
/* _ERROR_ */
/* _N_ Returns the number of iterations. Similar to record number. */
/* _ERROR_ it Returns the zero or One. */
/* 0.. No error in data. (Default) */
/* 1.. Error in data. */
/* The two variables default displayed in log window, whenever error
is occured in data. */
/* Two automatic variables are created by every DATA step: _N_ and
_ERROR_. */
