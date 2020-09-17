/** READING RAW DATA **/
/* infile:- infile statement the physical location of rawdata file */
/* input:- input statements variable and its datatype to be created on output dataset */
/* length:- length statement defines the lengths for the variable   */

proc import datafile='C:\Users\Sudha\Desktop\New folder\sas data sets\Advance_list_input.txt' out=sample1
dbms=dlm replace;
run;

data sample2;
length ename $20 designation $15;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\Advance_list_input.txt';
input eid ename &  $ designation $;
run;

proc import datafile='C:\Users\Sudha\Desktop\New folder\sas data sets\sample.txt' out=sample3
dbms=dlm replace;
run;

data sample4;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\sample.txt';
input eid ename $ gender $ age salary;
run;

data sample5;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\Sample_dlm.txt' dlm='@' ;
input eid ename $ gender $ age salary;
run;
/** dsd is nothing but data sensitive delimiter but it will work for only comma**/


proc import datafile='C:\Users\Sudha\Desktop\New folder\sas data sets\sample_multiple_dlm.txt' out=sample6(drop= var2 var4)
dbms=dlm replace;
delimiter=' ,@';
run;

data sample6;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\sample_multiple_dlm.txt' dlm=',@';
input eid ename $ gender $ age salary;
run;



data sample5;
infile '/folders/myfolders/Sample__consecutive_dlm.txt' dlm=',,';
input eid ename $ gender $ age salary;
run;


/* INPUT METHODS: */

/* 1) List Input Method */
/* 2) Named Input Method */
/* 3) Column Input Method */
/* 4) Format Input Method */
/* 5) Absolute Input Method */
/* 6) Mixed Input Method */
/* 7) Advanced List Input Method */

/* 1) List Input Method */
/* 	This is the default input method of SAS. */
/* 	In data, values are separated by at least one space. */
/* Note : */
/* -> Unable to control Embedded spaces. */

/* It can only work for Within the data, any character data value does not contain embedded spaces. */

data new1;  /* spaces data **/
infile cards;
length fname $ 14  lname $ 14 city $ 12 ;
input fname $ lname $  pin city $ ;
cards;
Annavaram 	Satyam		 	5000760 Hyderabad
JAMBOJU	SHIVARANJAN	5042145	Adilabad
SIRIPURAM	RAMAKKA		5042145	Adilabad
SIRIPURAM	SANKARAIAH	5042145 	Adilabad
SIRIPURAM 	LASMAKKA		5042145 	Adilabad
SIRIPURAM 	SHRINIVAS		5042145 	Adilabad
BILLA		DEVAKKA		5042145 	Adilabad
BILLA   	THIRUMALLESH	5042145	Adilabad
BILLA		LINGAIAH 		5042145	Adilabad
BILLA		VENKAMMA	5042145	Adilabad
TEKUMATLA PADMA		5042145	Adilabad
BILLA 	RAMAKKA		5042145	Adilabad
;
run;


data new; /* only one space data **/
infile cards;
length fname $ 14  lname $ 14 city $ 12 pin 8 ;
input fname $ lname $  pin city $ ;
datalines;
annavaram satyam 5000760 hyderabad
jamboju shivaranjan 5042145 adilabad
siripuram ramakka 5042145 adilabad
siripuram sankaraiah 5042145 adilabad
siripuram lasmakka 5042145 adilabad
siripuram shrinivas 5042145 adilabad
billa devakka 5042145 adilabad
billa thirumallesh 5042145 adilabad
billa lingaiah 5042145 adilabad
billa venkamma 5042145 adilabad
;
run;


data list_input_method;
length fname $12 lname $ 12 city $ 12;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\list_input_method.txt';
input fname $ lname $  pin city $ ;
run;

/* 2) NAMED INPUT METHOD */
/* 	In raw data, values are existed with variable names,
 then we should use named input method for data reading. */
/* Here, no problem with embedded spaces. */
/*  */
/* Named Input Method */
/** length for character variables is 32767 bytes **/
/** length for numeric variables is 8 bytes **/

data new;
infile cards;
length name $ 18 ; 
input number=  name= $  Age= ;
format number best16.;
cards;
number= 9000846590027894                  name=Srinivas Akula  Age= 27
number= 9989708642                             name= venkanna age= 40
number= 9000846591  name=Satyam Akkala  Age= 34
number= 9989708642  name= venkanna courier age= 40
;
run;

data Named_input_method;
length name $20 ;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\Named_input_method.txt';
input  number=  name= $  Age= ;
run;


data new1;
set new;
run;

/* 3) COLUMN INPUT METHOD */
/* Read the values using column numbers. */
/* Application > */

/* * COLUMN INPUT METHOD; */

data empdet;
infile cards;
input empid 1-5 empname $ 9-26 Designation $ 30-40 ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;
run;

data column_input_method;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\column input method.txt' truncover ;
input empid 1-5 empname $ 9-26 Designation $ 30-40 ;
run;


/* 4) FORMAT INPUT METHOD */
/* 	Read the data using column pointers. */
/* 3 types of column pointers are available. */
/* Column skip pointer (+n) */
/* Column Hold pointer (@n) */
/* Column range pointer (n.) */
/*  */
/* Column skip pointer (+n) here n represents skip number of columns. */
/* Column Hold pointer (@n) here n represents column number. */
/* Column range pointer (n.) here n represents read number of columns. */
/* In Format Input Method, we use column hold pointer and column skip pointer. */
/* Application > */

/* * FORMAT INPUT METHOD; */

data empdet;
infile cards;
input empid 4. +4  name $ 18. +3 Des $ 10. ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;
run;

data new;
set empdet;
length=length(name);
run;

data Format_input_method;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\column input method.txt' Truncover ;
input @2 empid  4.  +3  name $ 18. +3 Des $ 10. ;
run;


/* 5) ABSOLUTE INPUT METHOD: */
/* Read the data using point controls/column pointers. */
/* In Absolute Input Method, we use column hold pointer and column range pointer. */
/*  */
/* Application > */
/* Absolute Input Method */
/* * Read the values using point controls or column pointer; */

data new;
infile cards;
input  @2 empid 4. @2  name $ 18. @30 Des $ 10. ;
cards;
1231    Kiran kumar          Tester
1102    Kranti kumar panda   Analyst
1103    pawan kumar saha     Programmer
1104    Laxmikant Parida     Manager
;
run;

data Absolute_input_method;
infile '/folders/myfolders/column input method.txt' Truncover ;
input @1 empid 4. @9  name $ 18. @30 Des $ 10.;
run;

/* 6) MIXED INPUT METHOD */
/* 	To use multiple input method features in one input statement/single input statement. */
/*  */
/* Application > */
/* * Mixed input method; */

data empdetMIM;
infile cards;
input @1 empid 4. +4  name $ 9-28 +3 Des $ 30-45 ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;
run;

data mixed_input_method;
infile 'C:\Users\Sudha\Desktop\New folder\sas data sets\column input method.txt' Truncover ;
input @1 empid 4. name $ 9-28  Des $ 30-45;
run;

/* 7) Advanced List Input Method */

/* In this method, format modifiers are used. */

/* Ampersand (&) Modifier : It controls the SAS system, values are separated by more than one space.
 When we use the ampersand format modifier, 
 two blanks are required to signal the end of a data value. 
 It can effectively deal with embedded spaces/blanks. */
/* We can also control length of the variable. */

/* It recognizes  */
/* One single blank --> Embedded blank */
/* More than one blank --> Delimiter blank */

/* Colon(:) Modifier : It controls the length of the variable and call the informat techniques. */


/* Advance List Input Method */
/* & Modifier*/; 

data names ;
infile cards;
length empname $30 des $15; 
input eid empname&$   Des $  ;
cards;
101 Kiran Kumar varma  Tester
102 Swati Vohra  Finance Analyst 
103 Kranthi Bommasani  Programmer
;
run;

data names ;
length empname $30 des $15; 
input eid empname & $   Des & $    date:ddmmyy10.;
format date date9. eid dollar8.;
cards;
101 Kiran Kumar varma  Tester  01/02/2020
102 Swati Vohra  Finance Analyst  02/03/2020
103 Kranthi Bommasani  Programmer  03/04/2020
;
run;



/* Infile Options: */
/* These all infile options should be used for list input method. these are  */
/* DSD (Data separated Delimiter/ Data sensitive Delimiter) */
/* DLM or Delimiter */
/* Flowover */
/* Stopover */
/* Missover */
/* Truncover */
/* Firstobs, Obs. */

/** list input method(it is a default method os SAS reading raw data) **/
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
infile cards  dlm=',@!'; /* dsd or dlm=',' both are same functionality */
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
infile cards  dlm=' ,&|' missover;
input subid visit $ Dose $ amount;
cards;
101,visit1,05mg,458
102,visit1,10mg,489
103,visit1,15mg
101&visit2|05mg
102  &visit2&10mg
103&visit2&15mg
101&visit3|05mg
102|visit3|10mg
103|visit3|15mg
;
run;

/** missover:- it controls the sas system whenever the 
missing values are there in the end of the record **/
Data demo;
infile cards ;
input subid Age gender $ race $ color $ height weight ;
cards;
101 23 Male Asian White 5.6 67 
102 45 Female Asian 
103 20 Male Asian Black 4.5 56
104 40 Female Asian Black
105 23 Male
106 34 Female Asian Black 7.3  87
;
run;

data new;
infile '/home/u45022572/sasuser.v94/dilip.txt' dlm=', ';
input empid  name $	location $ S1 S2 ;
run;


/*  @ and @@ (single trailing and double trailing)  @ is default */
/** @@:- it holds the input record for the execution of the across records 
across records means multiple records in the same line **/

data new;
infile datalines;
input id name $ salary ;
cards;
101 sudhakar 526563 102 dhana 8465512 103 prit 545125 104 sravani 875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646 109 manohar 87845 110 raghava 78974
;
run;

data new;
infile datalines;
input id name $ salary @@;
cards;
101 sudhakar 526563 102 dhana 8465512 103 prit 545125 104 sravani 875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646 109 manohar 87845 110 raghava 78974
;
run;


data new;
infile datalines;
input id name $ salary @@;
cards;
101 sudhakar 526563 
102 dhana 8465512
103 prit 545125 104 sravani 875455
105 basha 878545 106 madhan 641222 107 lakshmi 87846 108 gopal 979646 109 manohar 87845 110 raghava 78974
;
run;

data test_2;
input number_1 number_2 number_3;
format number_1 number_2 number_3 best6.;
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

/* Input Buffer: */
/* Logical Memory Unit and storage Place of variables and Observations. */
 
/* SAS creates input buffer, whenever system reach Input Statement. */
 
/* PDV Unit (Program Data Vector): */
/* PDV interacts with input Buffer to collect record by record and run data error checking using 
two automatic variables. */
/* these are : */
/* _N_ */
/* _ERROR_ */
 
/* _N_  Returns the number of iterations. Similar to record number. */
/* _ERROR_ it Returns the zero or One. */
/* 0.. No error in data. (Default) */
/* 1.. Error in data. */
 
/* The two variables default displayed in log window, whenever error is occured in data. */
/* Two automatic variables are created by every DATA step: _N_ and _ERROR_. */


/*Day-1 Assignment*/

proc import datafile = '/folders/myfolders/DATA.csv' out = Data1 dbms=csv replace;
run;

proc import datafile = '/folders/myfolders/Demo.csv' out = Demo1 dbms=csv replace;
run;

proc import datafile = '/folders/myfolders/EMP.csv' out = EMP1 dbms=csv replace;
run;

proc import datafile = '/folders/myfolders/SAMPLE.csv' out = Sample1 dbms=csv replace;
run;

/*Day-2 Assignment*/

data ds;
set sashelp.class;
if _n_ in (2,5,6,10);
run;

/*Day-3 Assignment*/

proc sort data=sashelp.class out = sort;
by age;
run;


data Dup_age Uni_age;
set sort;
by age;
if first.age= 1 and last.age =1 then output Uni_age;
else output Dup_age;
run;


data genderAssgn;
input gender $;
cards;
M
M
M
M
M
M
F
F
F
F
F
F
;
run;


proc sort data=genderAssgn;
by gender;
run;

data new;
set genderAssgn;
by gender;
if first.gender then n=0; n+1;
run;

proc sort data=new;
by n descending gender;
proc print;
run;


/*Day-4 Assignment*/


/*insert two rows in sashelp.class data set.
1. sudhakar male 27 5.9 70;
 21. Radha female 22 5.7 50 **/

Proc format;
value $fmt
'M'='MALE'
'F'='FEMALE'
;
run; 


Data new;
if _n_=1 then do;
Name="Sudhakar";
Sex="M";
Age=27;
Height=5.9;
Weight=70;
output;
end;
Set sashelp.class end=x;
output;
if x then do;
Name="Radha";
Sex="F";
Age=22;
Height=5.7;
Weight=50;
output;
end;
format sex $fmt.;
Run;


data new1;
input empcode salary  country $30.;
cards;
1001 1473.33 USA
1002 1560.00 UK
1003 1646.67 india
1004 1733.33 japan
1005 1820.00 netherlands
1006 1906.67 poland
1007 1933.33 zimbabwe
;
run;




proc format;
value sanjay 1473.33='$1473.33';
             1560.00='$1560.33';
/*			 1646.67='1646.33';*/
/*			 1733.33='1733.33';*/
/*			 1820.00='1820.33';*/
/*			 1906.67='1906.67';*/
/*			 1933.33='1933.33';*/
/*run;*/
run;


data new2
set new1;
format salary sanjay.;
run;



/*tried this way but didnot work*/

data new3 (rename=(new_salary=salary));
drop salary;
set new1;
if country='USA' then new_salary = put(salary, dollar14.);
if country='UK' then new_salary = put(salary,  nlmnlgbp14.);
if country='india' then new_salary = put(salary, dollar14.);
if country='japan' then new_salary = put(salary, yen14.);
if country='netherlands' then new_salary = put(salary, euro14.);
if country='poland' then new_salary = put(salary, euro4.);
if country='zimbabwe' then new_salary = put(salary, dollar14.); 
run;

proc contents data=new3;
run;