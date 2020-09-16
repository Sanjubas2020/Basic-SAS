SAS

Statistical Analysis System/ Software

One of the technical tool and integrated system of software products.
One of the code based BI Tool.
SAS discovered in 1960 and launchseted in market in 1973.
It is the largest market-share holder for advanced analytics. 
A point-and-click interface was added in version 9 in 2004.  
SAS is a software suite that can mine, alter, manage and retrieve data from a variety of sources and perform statistical analysis on it. 

***********************************************************

SAS Windows Environment

5 Windows are available.

1. SAS Editor window
2. Log Window
3. Output Window
4. Explorer Window
5. Results window

1. SAS Editor window
Develop or edit the applications.
These applications are developed by 4 types of languages.

SAS Language
SQL Language
Macro Language
SCL (SAS Component Language)
Types of Editors..
Text and enhanced editors are available only in windows OS. Program Editor available in Multiple Operating Systems.

2. Log Window
Display errors, warning and status messages.


3. Output Window 
Display outputs or Reports.

4. Explorer Window
Contains 3 Components.

a) File Shortcuts > 
It creates shortcuts for PC files from PC to SAS Environment. 

b) Favourite Folders > 
It creates shortcuts for group of files or folders from PC to SAS.

c) Libraries
c) Libraries:
Storage place of sas files.
These sas files are 3 types.
1). Datasets
2). Views
3). Catalogs

Libraries are two types.
1).System defined libraries -->
These libraries are created by SAS system.
These are three types.
a). Work    --> It is a default temporary storage space of sas files. 
b). Sasuser --> Permanent storage space of user defined sas files.
c). Sashelp --> Permanent storage space of system defined sas files.
2). User defined libraries -->
These libraries are created & deleted by sas programmer as per the business requirements.

5. Results window

It saves Programming outputs temporarily until end of the  SAS session. In SAS environment, Output window is managed by the Results window.


Raw Data
two types.
1). Internal or Instream Data --> 
Data is available within the SAS application.

2). External or Stream Data -->
Data is coming from outside of SAS. 
Like PC Files or Databases.

Datatypes 
In SAS 2 data types are available.
1). Numeric  ---> By default 12 digits/12 bytes
2). Character ---> By default 8 digits/8 bytes

Data Formats:

1). Standard format  --->
data can be numeric, Character.
Example : Name, Designation, numbers, etc.

2) Mixed Format     --->
Data can be in mixed form.
Example : PAN card Number, Passport Number, Employee Id number, Dosage details etc.

3). Nonstandard      --->
data can be nonstandard.
Example: Date, Time, Date&Time, Amount, Percentages.

Base SAS / SAS v9.0
One of the product in SAS tool.
Uses of Base SAS.
i). Data entry and read data.
ii). Run all kinds of transformations
iii). Run simple mathematical and statistical operations.
iv). Generates various types of reports. Generate the report in most efficient format by the ODS (Output Delivery System).
v). Run SQL Operations called DB Management operations.
vi). Develop Macro applications by the Macro features.

Blocks :

Group of Statements.
SAS applications are developed by three Blocks.
Dataset Block
Procedure Block
Macro Block

Dataset Block
Group of statements for creating dataset.

Procedure Block
Analysis operations and generates reports.

Macro Block
Develop Macro applications.


********************************************************


Rules for developing the applications:
1). Each & every statement start with one specific keyword and end with semicolon ;.
2). Code can be written in Mixed case(not case sensitive).

Datasets:
Similar nature of table, Stores data in the form of variables and Observations. Each column can be called variable, each row of record can be called Observation.


Rules for dataset names and variable names.
->Name can be given up to 32 characters start with letter or underscore.
->Numbers can be given but not at the start of the name.
->Any special character cannot be used except underscore. Underscore can be given anywhere in the name.
-> Blanks can not be appeared.

Special Rules for Variable Names:

For variable names only, SAS remembers the combination of uppercase and lowercase letters that you use when you  create the variable name. Internally, the case of letters does not matter. CAT, cat and Cat all represent the same variable. But for presentation purposes, SAS remembers the initial case of each letter and uses it to represent the variable name when printing it.

Application->
Create a dataset from Internal data.
Dataset : Dm
Variable:         Subid     Num
		Age        Num
		Gender	  Char
		Race 	  Char
		Color	  Char






 

Infile Statement:

Access the data from internal/external to SAS internal memory Unit.
Input Statement: 
Define variables here. Character variable should be represented with $ and numeric variable have no notation.
Read and load the data into dataset with variable names.

Cards/Datalines Statement :
These statements represent internal data within the application.

Dataset block must be closed with semicolon or run statement.

Submission process is F3 or F8. Shortcut key in Keyboard or Submit Icon in toolbar.


Application->

Data Dm;
infile cards;
input Subid Age Gender $ Race $ Color $;
Cards;
101 23 Male Asian White
102 45 Female Asian White
103 40 Male Asian White
Run;

Token : 
SAS Keywords can be called Tokens.
Delimiter:
In raw data, data values are separated by any one special character. These special characters can be called Delimiters.
Default delimiter is Space.

*******************************
Read mixed data :
Mixed data can be regarded as a character value and loaded into character variable.

Dataset : Prd_sales
Variable: Prdcode	Char
		Month	Char
		Sales	Num
data...
P101	M1	230
P102	M1	240
P103	M1	250
P104	M1	270
*******************************

Application->
Data Prd_sales;
infile cards;
input Prdcode $ Month $ Sales;
datalines;
P101	M1	230
P102	M1	240
P103	M1	250
P104	M1	270
Run;
***********************************************************
Comment -->
Represents uses of application or functionality of the application.

Syntax:
/* Comment */
* Comment ;

Shortcut for comments..
Comment the selected line Ctrl+/ 
Uncomment the selected line Ctrl+Shift+/ 
**********************************************************

Reports:
SAS generates 3 types of reports.

1. Detail Report
2. Summary/Summarized Report
3. Customized Reports

1. Detail Report
	Generates report without analytical operations.
 
2. Summary/Summarized Report
	Generates the report using analytical operations.

3. Customized Reports
	Generates the report in most efficient format with required titles footnotes and some other reporting requirements.


Print Procedure:
	Simplest reporting procedure in SAS and it generates reports in output window.

Procedure blocks must be closed with RUN or QUIT.


Dataset : Ae
Variable:         Subid	 Num
		Visit	 Char
		Acterm	 Char
data...
101	Visit1	Fever
102	Visit1	Headache
103	Visit1	Rashes
104	Visit1	Cold
105	Visit1	Hairloss
105	Visit1	Vomiting
101	Visit2	Motions
102	Visit2	Cough
103	Visit2	Sneezing

Application>

Data Ae;
Infile Cards;
Input Subid Visit  $ Acterm $;
Cards;
101	Visit1	Fever
102	Visit1	Headache
103	Visit1	Rashes
104	Visit1	Cold
105	Visit1	Hairloss
105	Visit1	Vomiting
101	Visit2	Motions
102	Visit2	Cough
103	Visit2	Sneezing
Run;

Proc Print data=Ae;
Run;

Attrib statement: 
Associates a format, informat, label, and length with one or more variables.

Used to define many attributes for a variable in single statement instead of defining all other statements.

Here are examples of ATTRIB statements that contain different numbers of variables and attributes: 

** single variable and single attribute:

attrib cost length=4;

** single variable with multiple attributes:

attrib saleday informat=mmddyy.  format=worddate.;

** multiple variables with the same multiple attributes:

attrib x y length=$4 label='TEST VARIABLE';

multiple variables with different multiple attributes:

attrib x length=$4 label='TEST VARIABLE'
y length=$2 label='RESPONSE';

variable list with single attribute:

attrib month1-month12 label='MONTHLY SALES';

*** Attrib statement ;
data emp;
infile cards;
attrib  Eid length=4 label="Employee Id"  Des length= $12. label="employee designation";
input eid des $ ;
cards;
101	Tester
102	Progmer
;


Input Methods:
1) List Input Method
2) Named Input Method
3) Column Input Method
4) Format Input Method
5) Absolute Input Method
6) Mixed Input Method
7) Advanced List Input Method

1) List Input Method
	This is the default input method of SAS.
	In data, values are separated by at least one space.
Note :
-> Unable to control Embedded spaces.
Ex: Laxmi Kanth
It can only work for Within the data, any character data value does not contain embedded spaces.

Application>

*Extract the data;
data srini; * Dataset;
infile datalines;
length fname $ 14  lname $ 14 city $ 12 ;
input fname $ lname $  pin city $ ;
datalines;
Annavaram 	Satyam		 	5000760	Hyderabad
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
/* Print the dataset */
proc print data=Srini;
run;
*End of the Programme;

Storage process of the List Input Method:
List Input Method default stores 8 Characters for Character variable 12 digits for Numeric variable.

Length Statement--->
Register the variable with required length up to 32767 bytes/characters(32Kb).

Up to SAS v8 allowed only 256 bytes/characters.

Syntax :
Length <Variable> <data type> <Number>;
Example:
Length Name $ 24;
**********************************
Example: 
*************
Data Stlist;
infile datalines;
Length Name $ 16;
input StdId $ name $ Age;
datalines;
S101	Satyanarayana	25
S102	Bhavani	24
S103	Shwetha	21
S104	Meena   	25
S105	Roja	            20
S106	Shivaraj	22
S107	Selvaraj	24
;
Proc Print data=Stlist;
Run;
**********************************

Note :
Variable order will be changed irrespective of the order declared in the input statement while creating dataset when we use length statement. variables declared in length statement will be placed first in the dataset.

Relation between SAS and PC Units:
RAM : SAS takes the memory from RAM to run the applications.
Hard Disk: SAS takes the memory from Hard Disk for storage of SAS files.
1 Single char = 1 byte
1 Single digit of numeric = 1 byte

Storage process of Numeric variables:
	SAS recognizes numeric variable up to 12 digits. If more than 12 digits are entered, they load in scientific format(en)  to reduce storage space.
scientific format values takeup 12bytes only for any number having length varied upto 32,767 digits.
	SAS recognizes numeric variable up to 32,767 digits according to Operating System.
 

Mainframes	Up to 32,767 bytes
Unix	Up to 32 bytes
Windows	Up to 32 bytes

Best operating System is mainframes. Most of the business operations by corporates are run by relying on Mainframes OS for better Accuracy of Data.
Cheapest Operating System is windows. then, for security point of view, Unix is used.

Application >

data num ;
infile cards;
input crdno;
cards;
123456789012
26552656656666
55456559865265
55699865296565
65968526565656
65956563659655
;

proc print data = num;
format crdno best 14.;   /* for user friendly output */
run;
/*End of the Programme */

***********************************************************
2) Named Input Method
	In raw data, values are existed with variable names, then we should use named input method for data reading.
Here, no problem with embedded spaces.

/* Named Input Method */
data emp ;
infile cards;
length name $ 18;
input number=  name= $  Age= ;
cards;
number= 9000846590 name=Srinivas Akula  Age= 27
number= 9989708642 name= venkanna age= 40
number= 9000846591 name=Satyam Akkala  Age= 34
number= 9989708642 name= venkanna courier age= 40
;

* Reporting;
proc print data = emp;
run;
* end of the program***;
Note :
Here, the problem comes from data entry part, where there involves a tiresome tasks in writing variable names all the way, which may lead to data errors.

3) Column Input Method
Read the values using column numbers.
Application >

* Column input method;
data empdet;
infile cards;
input empid 1-4 name $ 9-26 Des $ 30-45 ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;

/* Print the dataset */
proc print data=empdet;
run;
*End of the Programme;

Note:  
	Here, problem comes from counting & identifying the column numbers.

4) Format Input Method
	Read the data using column pointers.
3 types of column pointers are available.
Column skip pointer (+n)
Column Hold pointer (@n)
Column range pointer (n.)

Column skip pointer (+n) here n represents skip number of columns.
Column Hold pointer (@n) here n represents column number.
Column range pointer (n.) here n represents read number of columns.
In Format Input Method, we use column hold pointer and column skip pointer.
Application >

* Format input method;
data empdet;
infile cards;
input empid 5. +3  name $ 18. +3 Des $ 10. ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;
/* Print the Report */
Proc Print Data = Empdet ;
Run ;

*End of the Programme;

5) Absolute Input Method:
Read the data using point controls/column pointers.
In Absolute Input Method, we use column hold pointer and column range pointer.

Application >
/* Absolute Input Method */
* Read the values using point controls or column pointer;
data empdetails;
infile cards;
input  @1 empid 4. @9  name $ 18. @30 Des $ 10. ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;
/* Print the Report */
Proc Print Data = empdetails;
Run ;

*End of the Programme;

6) Mixed Input Method
	To use multiple input method features in one input statement/single input statement.

Application >
* Mixed input method;
data empdetMIM;
infile cards;
input @1 empid 4. name $ 9-28  Des $ 30-45 ;
cards;
1001    Kiran kumar          Tester
1002    Kranti kumar panda   Analyst
1003    pawan kumar saha     Programmer
1004    Laxmikant Parida     Manager
;

/* Print the Report */
Proc Print Data = EmpdetMIM ;
Run ;

*End of the Programme;


7) Advanced List Input Method

In this method, format modifiers are used.

Ampersand (&) Modifier : It controls the SAS system, values are separated by more than one space. When we use the ampersand format modifier, two blanks are required to signal the end of a data value. It can effectively deal with embedded spaces/blanks.
We can also control length of the variable.

It recognizes 
One single blank --> Embedded blank
More than one blank --> Delimiter blank

Colon(:) Modifier : It controls the length of the variable and call the informat techniques.


/* Advance List Input Method */
* & Modifier*/;
data names ;
infile cards;
input eid name  &  $ 19. Des & $ 18. ;
cards;
101 Kiran Kumar varma  Tester
102 Swati Vohra  Finance Analyst 
103 Kranthi Bommasani  Programmer
;

** print the Report;

proc print data = names;
run;

*********************************************************
Infile Options:
These all infile options should be used for list input method. these are 
DSD (Data separated Delimiter/ Data sensitive Delimiter)
DLM or Delimiter
Flowover
Stopover
Missover
Truncover
Firstobs, Obs.


DSD (Data separated Delimiter): 
It controls SAS system, values are separated by commas instead of blanks.

* Infile Options;
* Data separated Delimiter --
It Controls SAS system, values are separated by commas(,) 
instead of spaces;
data mh;
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
proc print data = mh;
run;
*******************************************

DLM or Delimiter options:
	Enable to specify delimiters in data.

Dlm='<delimiters>';  or
Dlm="<delimiters>";


* DLM delimiter option;
* enable to specify delimiters in data;
* dlm = '<delimiters>' or 
* dlm = "<delimiters>" ;
Data Medi;
infile cards dlm= ",|&";
input subid visit $ Dose $;
cards;
101,visit1,05mg
102,visit1,10mg
103,visit1,15mg
101&visit2|05mg
102&visit2&10mg
103&visit2&15mg
101&visit3|05mg
102|visit3|10mg
103|visit3|15mg
;
proc print data = medi;
run;

Note :
If we use dlm option in application, then we have to specify all the delimiters including blank spaces if used in the raw data.

DSD (Data sensitive Delimiter)

Remove the quotations while data reading into dataset.

Data Medi2;
infile cards dlm= ",| &" dsd;   /* Here dsd acts as Data sensitive Delimiter */
input subid visit $ Dose $;
cards;
101,visit1 05mg
102,visit1,10mg
103,visit1,15mg
101&visit2|05mg
102&visit2&"10mg"
103&visit2&15mg
101&visit3|"05mg"
102|visit3|10mg
103|visit3|15mg
;
proc print data = medi2;
run;

Flowover:
	Default nature of SAS, and controls the SAS system to read only one record per line.

Stopover:
	Default nature of SAS, and controls the SAS system to stop reading at the end of the records.

Missing values: 
	Default nature of SAS in picking the missing values in the middle of the records but unable to manage reading the data whenever the values are missing at the end of the records.

In SAS data sets ./period represents numeric missing and blank/space represents Character missing.


Missover : It controls the SAS system to read the data whenever the values are missing at the end of the records.

/* missover*/
/* Extract Missing Values*/
Data demo;
infile cards missover ;
input subid Age gender $ race $ color $ height weight ;
cards;
101 23 Male Asian White 5.6 67
102 45 Female Asian 
103  20 Male Asian Black 4.5 56
104 40 Female Asian Black
105 23 Male
106 34 Female Asian Black 7.3  87
;
proc print data=demo;
run;

/* Comparison with not placing missover */

/* missover*/
/* Extract Missing Values*/
Data demo3;
infile cards  ;
input subid Age gender $ race $ color $ height weight ;
cards;
101 23 Male Asian White 5.6 67
102 45 Female Asian 
103  20 Male Asian Black 4.5 56
104 40 Female Asian Black
105 23 Male
106 34 Female Asian Black 7.3  87
;
proc print data=demo3;
run;


Truncover:
It adjusts the length of the record (similar nature of missover).

Instead of missover, we can use truncover.

Firstobs, Obs:
It reads part of the data in sequential order /logical order according to line numbers.

data Mh;
infile cards firstobs=3 obs=6;
input patid vist $ event $;
cards;
101	Visit1	Fever
102	Visit1	Headache
103	Visit1	Rashes
104	Visit1	Cold
105	Visit1	Hairloss
105	Visit1	Vomiting
101	Visit2	Motions
102	Visit2	Cough
103	Visit2	Sneezing
;
Proc print data=mh;
run;

To use semicolon as delimiter in internal data:
cards4/datalines4 Statement :
These statements represents internal data in applications, whenever the values are separated by semicolon as delimiter. In these cases, dataset block must be closed with 4 semicolons.

* To use semi colon as delimiter in internal data ;
* Extract data;
Data mh;
infile cards dlm= ";" ;
input subid visit $ Dose $;
cards4;
101;visit1;05mg
102;visit1;10mg
103;visit1;15mg
101;visit2;05mg
102;visit2;10mg
103;visit2;15mg
;;;;

* print the dataset;
proc print data=mh;
run;
*End of the Programme;  ;

**************************************************
Double trailing Method:
Run the input statement per line multiple times.
Uses: Read multiple records per line.

data prdsales;
infile cards;
input prdcode month $ sale @@;
cards;
101 Jan 240 101 Feb 320 101 Mar 250 101 Apr 250
102 Jan 240 102 Feb 320 102 Mar 250 102 Apr 250
103 Jan 240 102 Feb 320 103 Mar 250 103 Apr 250
;
Proc Print data=prdsales;
run;

Note :
Missover, truncover, firstobs, obs will not be supported by Double trailing Method. 
DLM, DSD infile options can be used in Double trailing Method. 
**********************************************************

Extract the data from delimiter files: these are three types.
1. Txt File
2. Tab File
3. Csv File


Txt file : Extract the data from txt file.

1. Source : E:\SAS\source\DLM\data1.txt

Dataset : dm
Variables : 	Name Char
			Age 	Num
			Sex	Char
Delimiter : 	&

Data Dm;
Infile 'E:\SAS\source\DLM\data1.txt' dlm = '&';
Input Name $ age Sex $;
run;


2. Source : E:\SAS\source\DLM\data3.txt
Dataset : Vs

Variables : 	Subid	Num
		Visit	Num
		Test	Char
		Units	Num
Delimiter & @
Read the values without quotes.


Data Vs;
Infile 'E:\SAS\source\DLM\data3.txt' dlm = '@&' dsd;
Input Subid  Visit Test $ Units  ;
run;


3. Source : E:\SAS\source\DLM\data4.txt

Dataset : Demo
Variables : 	Subid	Num 
		Name 	Char
		Age 	Num
		Gender	  Char
		Race	Char

Delimiter   	,
End values are missing in records.

Data Demo;
Infile 'E:\SAS\source\DLM\data4.txt'  dsd missover;
Input Subid  Name $ age Gender $ Race $;
run;


4. Source : E:\SAS\source\DLM\data8.txt

Dataset : Medi
Variables : 	Domain 	Char
		Siteno	Char
		Grpid	Char
		Dose	Char
		Dgtype	 Char

Delimiter: 		Tab Space

Data Medi;
Infile 'E:\SAS\source\DLM\data8.txt' dlm= '09'X;
input Domain $ Siteno $ Grpid $ Dose $ Dgtype $;
Run;


In txt file, data is available with variable names. In these cases, start the reading from second record onwards.

5. Source : E:\SAS\source\DLM\data2.txt

Data Mh;
Infile 'E:\SAS\source\DLM\data2.txt' dsd Firstobs=2;
Input Pid Visit $ Drug $;
Run;
Proc Print data=Mh;
Run;

Extract/Read Nonstandard Data :
Nonstandard values are date, time, date&time, Amount and Percentage values.

Informat Technique
Read Nonstandard values into Standard format(Numeric).

Format Technique:
Report Standard values into Nonstandard formats. Also load the formats into dataset.
Syntax:

Informat <variable> <Informat technique>;
Format  <variable> <Format technique>;

Informat statement should be used in dataset block only.
Format statement should be used in dataset block as well as procedure Block.

Informat & Format Technique for Dates : 
SAS default system specification date value is 01-01-1960.

 
SAS Date Value : Number of days difference between input date to system specification date(01-01-1960).

******************************************************

/* Extract Data */
data Emp;
infile cards;
input employ_id  Des  : $ 10. Jdate Ldate ;
informat jdate ldate ddmmyy10.;
cards;
101 Tester     10/01/1959 01/01/1960
102 Programmer 01/01/1961 01/01/1965
103 Analyst    23/03/1978 25/09/1985
104 Manager    12/08/2003 19/09/2007
;
Run;

/* Report */
Proc Print data = emp;
Format jdate ldate mmddyys10.;
RUN;

/* Report */
Proc Print data = emp;
Format jdate ldate mmddyyd10.;
RUN;
/* Report */
Proc Print data = emp;
Format jdate ldate ddmmyyp10.;
RUN;

/* End of the Program */
**************************************************

Date Value	Informat	Format
		
20/03/2003	ddmmyyw.	ddmmyysw.
		ddmmyyw.
20-03-2003		ddmmyydw.
20:03:2003		ddmmyycw.
20.03.2003		ddmmyypw.
20 03 2003		ddmmyybw.
20032003		ddmmyyn.
		
03/20/2003	mmddyyw.	mmddyysw.
		mmddyyw.
03-20-2003		mmddyydw.
03:20:2003		mmddyycw.
03.20.2003		mmddyypw.
03 20 2003		mmddyybw.
03202003		mmddyyn.
		
20Mar2003	date9.	date9.
20Mar03	date7.	date7.
		


Note :  ddmmyy or mmddyy minimum width is 8. maximum width 10.

Date : Minimum width 7 maximum width 9.
**********************************************************

/* Extract data */
data medi;
infile cards;
input subid Dose $ Sdate Edate;
informat Sdate Edate  ddmmyy10.;
cards;
101 05mg 23.03.2003 24.05.2003
102 10mg 13-05-2003 10-08-2003
103 15mg 19:09:2003 10:11:2003
;

/* Report */
Proc print data = Medi;
format Sdate ddmmyyd10. Edate ddmmyyp10.;
RUN;

****************************************************

/* Extract data */
Data AE;
infile datalines;
input subid Aeterm : $ 11. Sdate Edate;
informat Sdate Edate  date9.;
datalines;
101 Headache 23nov2003 24nov2003
102 Cold     24Dec2003 27Nov2004
104 Hairloss 25jun2004 29Mar2004
190 Rashes   27Jan2004 06feb2004
;
/* Report */
Proc Print data=AE;
format Sdate Edate  date9.;
RUN;
/* Report */
Proc Print data=AE;
format Sdate Edate  date9.;
RUN;
/* End of the Program */
****************************************************

/* Extract data */
data Plans_list;
infile cards;
input Plan_code $ Plan : $ 12. OMon CMon;
informat OMon CMon  Monyy7.;
cards;
P098 1min/1Rs. Jan2004 Mar2005
P078 3Min/2Rs. Feb2005 May2006
P156 1Sec/1Ps. May2009 Oct2012
;

/* Report */
Proc print data =Plans_list;
format  OMon CMon ddmmyyp10.;
RUN;

/* Report */
Proc print data =Plans_list;
format  OMon CMon Monyy7.;
RUN;


/* Report */
Proc print data =Plans_list;
format  OMon CMon Month.;
RUN;

Proc print data =Plans_list;
format  OMon CMon Downame.;
RUN;

Proc print data =Plans_list;
format  OMon CMon weekdate24.;
RUN;

Proc print data =Plans_list;
format  OMon CMon Monname.;
RUN;

***********************************************************

Julian Date : 
Old date Format

1962032		--->			1962 		032 
						Year 		Days

62032		--->			1962 		032 
						Year 		Days

Julian date minimum width is 5. maximum width is 7.
In 7 digits, First 4 digits represent year and next 3 digits represent number of days in the year.

Julianw. 
Informat, Format technique for reading and reporting Julian date.

Data Employe;
input Eid $ Jdate Ldate;
Informat Jdate Ldate Julian7.;
cards;
E101	1992035	2014065
E102	1992036	2014066
E103	1992037	2014067
E104	1992038	2014068
E105	1992039	2014069
E106	1992040	2014070
E107	1992041	2014071
E108	1992042	2014072
Run;
Proc Print data=Employe;
Format Jdate Ldate mmddyy10.;
run;
Proc Print data=Employe;
Format Jdate Ldate ddmmyy10.;
run;

Formats For Reporting
Format	Report
yymmddd10.	yyyy-mm-dd
yymms.	yyyy/mm
yymmd.	yyyy-mm-dd
yymmp.	yyyy.mm
yymmc.	yyyy:mm
mmyys.	mm/yyyy
Day.	Day(1-31)
Month.	Month(1-12)
Year.	yyyy
Qtr.	Quarters(1-4)
Weekday	Weekdays(1-7)
Downame	Weekdays(Sun-Sat)
Worddate18.	Month,Day,year
Weekdate24.	weekday,Month,Day,year

***********************************************************

Time Values

Time Value	Informat	Format
 	 	 
10:23	 	 
15:23	Time5.	Time5.
 	 	 
10:23:45	 	 
21:24:23	Time8.	Time8.
 	 	 
10:23:45am	 	 
02:24:23pm	Time10.	Time10.

SAS Time value:
Number of seconds difference between  input time to system specification time.
System specification time    00:00:00
					    hh:mm:ss


/* Extract data */
data surgtimes;
infile datalines;
input subid sgtype $ Stime Etime;
informat Stime Etime time5.;
datalines;
101 Surg1 10:23 18:34
102 Surg1 12:34 19:45
103 Surg2 09:23 20:32
104 Surg2 08:34 21:23
Run;

/* Report */
Proc Print data = surgtimes;
Format stime etime time5.;
Run; 

***********************************************************

Date&Time Values

Date&Time Value	Informat	Format
 	 	 
20Feb2003:10:23:23	 	 
21Mar2003:16:45:12	Datetime18.	Datetime18. (most common)
 	 	 
20Feb2003:10:23:23am	 	 
21Mar2003:04:45:12pm	Datetime20.	Dateampm22.  (here time is represented by ampm)
 	 	 


SAS Date&Time Values
Number of seconds difference between  input time to system specification date&time.
System specification time 01Jan1960:00:00:00
					 ddmonyyyy:hh:mm:ss


Data Treatments;
input Subid Dose $ Sdtime Edtime;
informat sdtime edtime datetime18.;
cards;
101	05mg	13may2003:10:23	13Jun2003:18:34
102	05mg	14jun2003:12:34	20oct2003:19:45
;

Proc Print data=Treatments;
Format Sdtime Edtime datetime20.;
Run;

***********************************************************


Percentw. 
Informat technique and format technique for percentage values.

50%	0.5

/* Extract data */
data emp_hike;
infile cards;
input eid $ Hike;
informat hike percent5.;
cards;
E101 50%
E102 30%
E103 10%
RUN;

/* Report */

Proc print data =emp_hike;
format hike  percent5.;
RUN;


Work with amounts:

Value			Informat		Format
000,000,000		commaw.		commaw.
$000,000,000		dollarw.		dollarw.

Dollarw. is used presently.
These days currency already loaded as numeric value . Informat technique is hardly used in real time.

data finance;
infile datalines;
input dgcode $ invest Profit;
informat invest Profit dollar12.;
datalines;
anti-S $298,145,445,545 $687,145,445,545
anti-H $280,145,445,668 $298,821,445,545 
anti-K $230,986,445,875 $986,145,445,545
anti-M $989,145,445,555 $426,145,445,545
run;

/* Report */
proc print data=finance;
format invest Profit dollar18.;
RUN;


proc print data=finance;
format invest Profit comma15.;
RUN;


proc print data=finance;
format invest Profit dollar15.;
RUN;

Customization of SAS Applications:
Working with internal data, & no need to use infile options to read the data. In these cases, within the application, no need to use infile statements.

Note : If the values separated by more than one space then colon (:) is necessary. If we don’t want to use colon (:) then values must be separated by exact one space.

/* Customization of SAS Applications */
/* Extract Data */
data Mh;
input Subid Dose $ Sdate : date9. Edate : date9. ;
datalines;
101 05mg 14Jan2003 16May2004
102 10mg 20Mar2003 21Apr2005
103 15mg 21May2004 20Oct2005
Run;



Read Nonstandard Data from Txt Files


/* Read Nonstandard Data from Txt Files */

data Employees;
infile 'E:\SAS\source\DLM\data7.txt';
input eid Jdate : ddmmyy10.  Ldate : ddmmyy10. ;
Run;
/* Report*/
proc Print data = employees;
format Jdate  Ldate  ddmmyy10. ;
run;

/* End OF the Program */
******************************************

Dataset Names:
Dataset name can be used in one level or two level format.

1. One level
Data <dataset name>;  ---> Work Library

2. Two Levels 
Data <Library name>.<dataset name>;  

Example: Data sasuser.dm;  ---> Sasuser library
	    Data work.Dm;  ---> Work Library

Dataset name can be used in one level or two level format. But SAS recognizes the dataset name only in two level format.

User defined Libraries:
	These libraries are created by user as well as deleted by the user.

These are two types.
1. Temporary libraries.
2. Permanent Libraries.

1. Temporary libraries:
	These libraries are available till the session is live/ not closed.


2. Permanent Libraries:
	These libraries are available in multiple sessions and until deleted by the user. These libraries are created in independent mode or dependent mode.

independent mode : SAS files are not available in sharing mode.

dependent mode: SAS files are available in sharing mode.
dependent mode process can be called concatenate libraries.

F Statement:
It creates user defined temporary libraries in independent mode or dependent mode.

Syntax: 
Libname <Libref> <Engine> '<Physical Path>'; 

Libref : Name of the library or Reference of the library.

Rules: Name can be given up to 8 characters. Start with letter or underscore. Cannot use any special character except underscore.

We can use numbers.

Engine: Stores the data in datasets in different formats. 

Engines are two types:

1. Internal Engines
2. External Engines/ Interface Engines 

1. Internal Engines
 	SAS default takes internal engines according to versions.

Versions	Engines
SAS v4	v4
SAS v5	v5
SAS v6.08	v6
SAS v6.1	v6
SAS v6.12	v6
SAS v7	v7
SAS v8.0	v8
SAS v8.1	v8
SAS v8.2	v8
SAS v9.0	v9 / Base
SAS v9.1	v9 / Base
SAS v9.1.2	v9 / Base
SAS v9.1.3	v9 / Base
SAS v9.2	v9 / Base
SAS v9.3	v9 / Base
SAS v9.4	v9 / Base


2. External Engines/ Interface Engines
	Create External Libraries or DB Libraries and run the operations for external source.
SAS supports 63 external engines.

Examples:
Excel
Access
Oracle
DB2
Teradata
ODBC
OLE DB
XML
XPORT
SPSS

Physical Path for storage place of datasets:
	Create temporary libraries in independent mode.

Libname Clinic Base 'D:\';

data clinic.dm;
run;


/* create libraries */
Libname clinic v9 'd:\sas1';

/* store dataset */
data clinic.dm;
infile 'e:\sas\source\dlm\data1.txt' dlm='&';
input name $ Age gender $;
Run;

Proc print data=clinic.dm;
Run;


Create temporary libraries in dependent mode :
	Allocate the memory in server for storage of datasets.
Requirements:  Minimum 2 users. 

/* first user create one library */

/* step1 */
libname clinic1 '\\sasbiserver\students\datasets2';


/* step2 */
libname clinic2 '\\sasbiserver\students\datasets2';
***************************************************

Create permanent Libraries:
	These libraries are created using Menu options.
	Using menu options, we can create and delete permanent Libraries as well as temporary libraries.

Steps for creating library by menu options

Click on library icon in toolbar.

Type library name in name text box. Engine is default. click on enable at startup check box, then sas creates permanent library.  Disable this check box, sas creates 
temporary library. 

Using browse button enable to specify physical location for storage of datasets. Click on OK.

Libname _all_ list;
 
Trace and print list of libraries with descriptive information in log window.

Libname  <Libref>  list;

This traces the descriptive information for one library in log window.

Libname _all_  clear;
 Deletes all temporary libraries from SAS environment.

Libname  <Libref> clear;
	Deletes required temporary libraries from SAS environment.


Note :  Permanent libraries can be created and deleted by the menu options. Temporary libraries can be created and deleted by the code or menu options.

Access the datasets from physical location to SAS:

/* Collect datasets from server to SAS */
Libname user3 'E:\sas\source\sasfiles';

Proc print data=user3.customers;
Run;


Libname user4 ( 'E:\sas\source\sasfiles'  'E:\sas\data');

**********************************************************

Transformations

Modify the data as per the business requirement  for understanding.

Sort Procedure :  Run the sorting in ascending / descending order.

Default order is ascending.

Syntax :
Proc Sort data=<input dataset> Out=<Output dataset> <options>;
By <variables>;
Run;


Out option : Creates output dataset or sample dataset for sorting result.

By statement: Enable to specify by variables for sorting.

To use numeric variable sorting ..


libname user3 'e:sas\source\sasfiles';

proc print data=user3.customers;
run;

 /* create library */
libname srini base 'e:\SAS\sasds';
Run;

/* Plug out all libraries */
libname _all_ clear;


/* source*/

data dm;
input subid Age Gender $;
cards;
101 34 F
102 45 M
103 23 F
104 33 F
105 48 M
106 20 M
107 38 M
108 21 F
run;

/* Sort */
Proc Sort data = dm out=dmsort;
by age;
run;
/* Report */
Proc print data = dmsort;
Run;

Descending Option: 
	Runs the sorting in descending order. This option should be used within the by statement. 


/* Sort by descending */
Proc Sort data = dm out=dmsortdesc;
by  descending age;
run;
/* Report */
Proc print data = dmsortdesc;
Run;

Note: If we submit sorting procedure without OUT option, then sas runs the sorting and stores the result in Master dataset.
We cannot submit sorting procedure without by statement.

/* Sort without out Option
 Results in sorting of parent/Master Dataset */
Proc Sort data = dm ;
by age;
run;


/* Sort */
Proc Sort data = dm out=dmsortgen;
by gender;
run;

*****************************************

Numeric sorting :


data test;
input x; 
cards;
23
.
0
-23
3.4
-4.5
34
;


proc sort data =test out=test2;
by x;
run;
 
proc sort data =test out=test1;
by descending x;
run;

/* Report */
Proc print data =test1;
Run;
/* Report */
Proc print data =test2;
Run;


**********************************
  . < -ve  < 0  < +ve 

**********************************
. represents null value.





To use numeric variable sorting ..

data Chars;
input char $;
datalines;
A
a
B
b
C
c
O
p
Run;

/* Sort */
proc sort data=chars out=charsort;
by char;
run;

SAS runs the character sorting using ASCII values. These ASCII values are quite different for Capital letters to small letters.

Uppercase	ASCII Values	Lowercase	ASCII Values
A	65	A	97
B	66	B	98
C	67	C	99
D	68	D	100
E	69	E	101
 	 	 	 
Z	90	Z	122

Note : According to ASCII values, character data is case-sensitive.

In ascending order:

Task : Run the sorting by gender values.


data dm;
input subid Age Gender $;
cards;
101 34 F
102 45 M
103 23 F
104 33 F
105 48 M
106 20 M
107 38 M
108 21 F
run;

/* Sort */
Proc Sort data = dm out=dmsortchar;
by gender;
run;
/* Report */
Proc print data = dmsortchar;
run;

To use multiple variables for sorting:

Task : to report each group information from last visit to first visit..

/* Extrat Files */
data Mh;
infile 'E:\SAS\source\DLM\data6.txt';
input grpid $ Visit $ Dose $ Sub;
Run;
/* Sorting */
proc sort data=mh out=mhsort;
by grpid descending visit;
run;
/* Report */
proc print data=mhsort;
run;
/* Sorting */
proc sort data=mh out=mhsortdesc2;
by  descending  grpid  descending  sub;
run;

****************************************

Run data cleaning by the sorting procedure:
	In data cleaning process, we have to delete duplicates.

Duplicates are of two types.
1. Duplicate data value.
2. Duplicate Observation.

1. Duplicate data value.
		The values repeated more than one time in variable. Here, key variable is only one.

2. Duplicate Observation.
		The observation is repeated more than one time in data. Here, key variables are more than one.

In data warehouse stream line is of two types.
a. Dimensional data
b. Fact data.

a. Dimensional data
		It contains unique values.
b. Fact data.
		It contains facts or measures.

Relation: Control the data loading in fact file according to dimensional.

In dimension file, we have to verify duplicate data values and in fact file, we have to verify duplicate observations.

**********************************************************

Data Cleaning:

data Demo;                                                                                                                              
input site_no $ Grpno $ Subid Age Gender $  Race $;                                                                                     
cards;                                                                                                                                  
S1 Arm1 101 23 Female Asian                                                                                                             
S2 Arm1 102 45 Male   Asian                                                                                                             
S1 Arm2 201 40 Female Asian                                                                                                             
S1 Arm2 201 50 Male   Asian                                                                                                             
S2 Arm1 301 10 Male   Asian                                                                                                             
S2 Arm2 402 20 Female Asian                                                                                                             
;     
Proc print data=demo;
Run;
                                                                                                                                  
                                                                                                                                        
/* Data Cleaning */                                                                                                                           
proc sort data=demo out=dmclean nodupkey;                                                                                               
by subid;                                                                                                                               
run;                                                                                                                                    
                
/* Extract The Data */

data nod;
input Eid $ Salary Jdate : date9.;
cards;
E101 1000 10Mar2003 
E101 1000 10Mar2003 
E101 1000 10Mar2003
E102 1800 16Mar2004
E103 2000 10Apr2008
E103 2000 11Apr2008
E103 2000 10Apr2008
E104 6000 19May2000
Run;


/* Sort and Clean The Data */
Proc Sort data=nod out=nodout nodupkey;
by Descending Eid;
run;

Proc Sort data=nod out=nodoutkey  nodupkey;
by Eid;
run;

Proc Sort data=nod out=nodoutkey1  dupout=nodupoutkey  nodupkey;
by Eid;
run;
                                                                                                                                      
/* Extract data */                                                                                                                      
                                                                                                                                        
Data Mh;                                                                                                                                
Infile 'e:\sas\source\dlm\data6.txt';                                                                                                   
input Grpid $ Visit $ Dose $ Sub;                                                                                                       
Run;                                                                                                                                    
                                                                                                                                        
Proc sort  data=mh out=mhclean dupout=dup_mh  nodupkey;                                                                                 
by grpid  ;                                                                                                                             
run; 
***********************************************************
Nodupkey deletes duplicate observations using key variables which are passed at by Statement.

Nodup deletes duplicate observations using all the variables which are available in the input dataset.

Noduprec option is similar to Nodup.
***********************************************************
                                                                                                                                  
                                                                                                                                  
/* Print Procedure generates reports in output window                                                                                   
Print Procedure generates detail reports  */

/* Create Library  */
Libname Srini 'e:\sas\source\sasfiles'; 

/* Print Proc   */
Proc print data=srini.customers  noobs;
run;

/* Print Proc   */
Proc print data=srini.customers Double  noobs;
run;


/* Print Proc   */
Proc print data=srini.customers Double  ;
run;


/* Print Proc   */
Proc print data=srini.customers heading=vertical;
run;


/* Print Proc   */
Proc print data=srini.customers width=full;
run;

 /* Print Proc   */
Proc print data=srini.customers  noobs  n;
run;
 /*                                     
Proc Print Options Are 
Noobs
Double
heading   =   Horizontal  /  Vertical
Width     =   Minimum/Full
N 
Label  ---> Activates label Print in Output
Split Option ---> Activates Break in the Labels  

*/                                         
                                                   


Customization by the var Statement  



 /* Print Proc   */
Proc print data=srini.customers  ;
var Month Custno Goods;
run;

 /* Print Proc   */
Proc print data=srini.customers  ;
Id Prdcode Month ;
run;


Null Id generates report without Obs Column (Similar Nature of Noobs).
                                                                                                                                        
 /* Print Proc   */                                                                                                                     
Proc print data=srini.customers N  ;                                                                                                    
Id;                                                                                                                                     
run;                                                                                                                                    


                                                                                                                                       
data sample1;                                                                                                                           
set user1.customers;                                                                                                                    
drop month goods;                                                                                                                       
run;            




****Labels Statement*** 
Change column Headings in Report
Template/Markup/ Dummy Report gives an outlook of the report.  ;

/* Create Library  */
Libname Srini 'e:\sas\source\sasfiles'; 


/* Generate report with Variable Names */
Proc print data= srini.customers  labels ;
label	Custno= 'Customer Number'
	BchCode='Branch Code'
	Prdcode='Product Code';	
run;


Split Character :  Generates Breaks in Labels. Default Split Character is Space.
 
Split Option:  Enables to specify Split Character.


/* Generate report with Variable Names with Split Features*/

Proc print data= srini.customers  label Split='*';
label	Custno= 'Customer Unique * Number'
	BchCode='Branch Unique *  Code'
	Prdcode='Product Unique *  Code'
	Goods=   'Goods in * Millions';	
RUN;

                                                                                                                                       
                                                                                                                                        
/* Generate report with Variable Names with Split Features and full width*/                                                                            
                                                                                                                                        
Proc print data= srini.customers  label  ;                                                                                      
label      Custno= 'Customer Unique Number'                                                                                           
      BchCode='Branch Unique   Code'                                                                                                   
      Prdcode='Product Unique   Code'                                                                                                  
      Goods=   'Goods in  Millions';                                                                                                   
RUN;  

                                                                                                                                       
                                                                                                                                        
/* Generate report with Variable Names with Split Features and full width  and sum the Goods variable */                                                                            
                                                                                                                                        
Proc print data= srini.customers  label Split='*'  width=full ;                                                                                      
label      Custno= 'Customer Unique * Number'                                                                                           
      BchCode='Branch Unique *  Code'                                                                                                   
      Prdcode='Product Unique *  Code'                                                                                                  
      Goods=   'Goods in * Millions';    
SUM Goods;                                                                                              
RUN;  
 


Proc print data= srini.customers  ;    
SUM Goods;                                                                                              
RUN;

                                                                                                                                       
/* Create Library  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 
                                                                                                
/* Sorting */                                                                                                                                        
Proc sort data= user1.customers out=Custsort ;
by Custno;
RUN;                                                                                                                                    
                
/* Sum the goods Customer-wise */
Proc print data=custsort;
sum goods;
by custno;
RUN;

Syntax : Sum <variables>;

***********************************************************
Grouping Analysis>

can also be called Multi-Dimensional Analysis.
Here, Variables are of two types.
1) Classification Variables/Grouping Variables-->
	can be Char/Numeric
2) Analaysis Variables/Calculation Variables-->
	Must be Numeric.


/* Create Library  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 
                                                                                                
/* Sorting */                                                                                                                                        
Proc sort data= user1.customers out=Custsort ;
by Custno;
RUN;                                                                                                                                    
                
/* Sum the goods Customer-wise */
Proc print data=custsort;
sum goods;
by custno;
RUN;

In output Groups are separated by Lines.

Pageby Statement
Generates report in multiple Pages.

/* Sum the goods Customer-wise */
Proc print data=custsort;
sum goods;
by custno;
pageby custno;
RUN;


***********************************************************
Possible Statements in Proc Print Block
Format - Formats Standard data into Non-std Data
Labels - Print Labels for variables
Var - Print required variables only
Id - Print required variables at the start of the output
Sum - Sums up the numeric variables
by -  defines variable for sum operation
pageby - Print variable-wise output 
/* Options Pageno - Print the data in the Given Page Number  */
Where- Specifies Variable for Conditions
***********************************************************
Possible  Options in Proc Print Block 
Noobs - Removes Obs Column
Double- Print lines between records
heading   =   Horizontal  /  Vertical
Width     =   Minimum/Full
N   ---> Display No. of entries at the end of the report
Labels  ---> Activates label Print in Output
Split Option ---> Activates Break in the Labels  
***********************************************************
                                         
Create Sample Datasets from Master Datasets--                                          
Set Statement--
Read the data from One dataset or Multiple datasets to one dataset record by record.
                                                                                                     
  /* Plug out */                                                                                                                        
libname user1 list;                                                                                                                     
                                                                                                                                        
libname user1  clear;                                                                                                                   
**********************************;                                                                                                     
 
/* Create Library/ Collect Datasets */                                                                                                  
                                                                                                                                        
libname Master 'e:\sas\source\sasfiles';                                                                                                
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
/*Create Sample Datasets  */                                                                                                            
                                                                                                                                        
Data Aesample;                                                                                                                          
set Master.Ae;                                                                                                                          
run;               

Data Custsample ;
set Master.Customers;
Run;

/* Plug Out */
Libname Master Clear;

set statement options:
end=  :
enable to specify a variable that indicates the last record of the dataset. this variable is not returned/saved in the dataset.

example:
data dm;
set sashelp.class end=end;
if end=1 then output;
run;


data dm2;
set sashelp.class end=end;
if end=1 then 
n_=_n_;
run;


NOBS=  :
creates and names a temporary variable whose value is usually the total number of observations in the input data set or data sets. 


data dm;
set sashelp.class nobs=n;
if _N_=n then
n_=n;
run;



*******************************************************;

Options  
Three Types
1) Global Options
2) Dataset Options
3) Statement Options

1) Global Options
In SAS Environment each and every SAS File is affected by global Options.

Manage the Output Window By Global Options..

Default	Change
Center	Nocenter
Date	Nodate
Number 	Nonumber




Options Statement
Call the Global Options. This Statement can Be used anywhere in the application.
Manage Ouput Window By Global Options..
/* Create Library/ Collect Datasets */
libname user1 'e:\sas\source\sasfiles';  
                                                                                              
Options nodate nocenter;
/* Report  */ 
Proc Print data=user1.ae;
Run;

/* Report  */ 
Proc Print data=user1.customers;
Run;

/* Pass Defaults  */
Options date center;

/* Report  */ 
Proc Print data=user1.customers;
Run;

Pageno Options:
Assign the page Numbers.

/* Report  */ 
Proc Print data=user1.customers;
options Pageno=9;
Run;


Linesize or LS Option...
Default line size 64 Chars per line.
It can be increased upto 256 Chars per line.

Proc print data=sashelp.citimon;
RUN;
Options Linesize=230; 
Proc print data=sashelp.citimon;
RUN;

/* Pass Defaults  */
Options LS=64;

Pagesize or PS Option...
Default page 16 lines per page (54 Lines).
can be increased upto 32,767 lines per page.
Increase the height of the window upto 32,767 lines per page.
data Sample ;                                                                                                                           
Set sashelp.citimon;                                                                                                                    
run;                                                                                                                                    
                                                                                                                                        
Options Linesize=230  pagesize=280; 
 Proc print data=sample;
RUN;
    
/* Pass Defaults  */
Options LS=64 PS=54;



Manage Log Window By Global Options..

Default	Change
Source	Nosource
Notes	Nonotes

/* Create Library/ Collect Datasets */
libname user1 'e:\sas\source\sasfiles';  
    
Options Nosource Nonotes;
Proc Sort data=user1.customers out=custout;
By Custno;
run;
Proc print data=Custout;
run;

/* Pass Defaults  */
Options source notes;     

Options Errors..   
set a limit for data errors.
                                                                                                             
Options errors=2;                                                                                                                                    
data employee;                                                                                                                                       
input eid salary;                                                                                                                                    
cards;                                                                                                                                               
E101      2000                                                                                                                                       
E102      6900                                                                                                                                       
E103      7000                                                                                                                                       
E104      8000                                                                                                                                       
E101      2001                                                                                                                                       
E102      6901                                                                                                                                       
E103      7001                                                                                                                                       
E104      8001                                                                                                                                       
E101      2002                                                                                                                                       
E102      6902                                                                                                                                       
E103      7002                                                                                                                                       
E104      8002                                                                                                                                       
E101      2003                                                                                                                                       
E102      6903                                                                                                                                       
E103      7003                                                                                                                                       
E104      8003                                                                                                                                       
E101      2004                                                                                                                                       
E102      6904                                                                                                                                       
E103      7004                                                                                                                                       
E104      8004                                                                                                                                       
run;                                                                                                                                                 
                                                                                                                                                     
/* Pass Defaults  */                                                                                                                                 
Options errors=Max; 
 
Options Yearcutoff...
To manage date values which Contain 2 digits of Years.
Yearcutoff default value 1920.
Options Yearcutoff= 1920 ;  -2019.


Options Yearcutoff= 1814;
data dates;
input date : ddmmyy8.;
cards;
15/02/15
21/04/12
29/03/45
23/12/98
run;
/* Report */
proc print data=dates;
format date date9.;
run;

/* Pass Defaults  */
Options Yearcutoff= 1920 ;  

***********************************************************
Global Options....
center 
date
pageno
linesize/LS
Pagesize/PS
firstobs obs
------------
Source
Notes
errors
yearcutoff
***********************************************************

Data set Options..

Data set options specify actions that apply only to the SAS data set with which they appear. They let you perform the  following operations:
renaming variables
selecting only the first or last n observations for  processing.
dropping variables from processing or from the output data set.
specifying a password for a data set.

~It can be used in required datasets.
~Can be used in dataset block or procedure block after dataset name within the brackets.

Label option:
Enable to create label for the dataset.
Example:
data demog(label=Demographic data);
set sashelp.class;
run;


Keep Option:
Read part of the variable.
syntax => (keep=<variable names>);

/* Collect Datasets*/
Libname user1 'e:\sas\source\sasfiles';

/*Create Sample Datasets */
Data Custsample1 (Keep=Custno prdcode goods );
set user1.customers;
run;

Data Custsample2;
set user1.customers (Keep=Custno prdcode goods );
run;

Drop Option..
It drops non-required variables from reading process.
syntax => (Drop=<variable names>);

data sales;
set user1.salesdata(drop= Month Stock );
Run;

Rename Option..
Rename variables.

syntax => (Rename=(<Old name> = <New Name> ));

Data Aesample;
set user1.ae (Rename=(Arm=Grpid Actype=Aeterm));
Run;


Data Aesample22;
set user1.ae ;
Rename Arm=Grpid Actype=Aeterm ;
Run;


data custsample3;
set user1.customers;
keep Custno Prdcode Goods;
Rename Goods=Quantity;
Run;

/* OR  */
                                                                                                                                       
data custsample4;                                                                                                                       
set user1.customers( keep= Custno Prdcode Goods Rename=( Goods=Quantity));                                                              
Run;
/* OR  */
                                                                                                                                       
data custsample5 ( keep= Custno Prdcode Goods Rename=( Goods=Quantity));                                                                                                                                                                                     
set user1.customers; 
Run;
/* Completed**/ 

Read Write Pw Options.....
~ can be called Dataset Previliges.  
Password can be given upto 8 Chars.


data Demo1 (read=Apple  write=Orange )  ;
set user1.dm;
Run;


data Demo2 (read=Apple  Pw=Orange )  ;
set user1.dm;
Run;


/* Remove The Password  */
Data Demo1;
set Demo1;
Run;

*********************************************

FirstObs, Obs.....
Read part of the data in sequential order.
These options can be used as infile options, Dataset options, and Global Options.


/* Dataset Options  */
data employees;
set user1.emp_salaries(firstobs=2 obs=6);
run;

/* Use as Global Options  */
Options firstobs=3 obs=6;
data sample1;
set user1.ae;
Run;

data sample2;
set user1.customers;
run;

/* Pass Defaults  */
Options firstobs=1 obs=Max;

data sample3; 
set user1.customers;
run;
***********************************************************
Dataset Options are
label
Keep
Drop 
Rename 
Where 
******* Privilege options
Read : we can alter,replace&delete the dataset. restrict the reading of the dataset only.
Write
Pw  : restrict the reading of the dataset. alter proof, can not replace & can not delete the dataset.

***********************************************************
Master : sashelp.class
sample : Dm
Keep : Name Sex Age
Sort Age in Descending order
Rename Sex as Gender
***********************************************************
proc sort data=sashelp.class out=Dm( Keep= Name sex Age Rename=(Sex=Gender));
By descending Age;
RUN;

***********************************************************

Keep Drop  & Rename Statements..

These Statements should be used in dataset Block.
Syntax=>

Keep <Variable Name>;
Drop <Variable Name>;
Rename <Old Name>=<New Name>;

data demo2 ;
set sashelp.class;
Keep Name sex Age;
Rename Sex=Gender;
run;

Options Procedure...
Print information for required global Option in log window.

Proc Options option=Firstobs;
run;

Assign formats and labels Permanently..
Use Format and labels permanently in dataset block, Then SAS assigns permanent format and labels.
*******************************************************
Data Mh;
input Subid $ Dose $  Sdate : date9. Edate : date9. ;
format Sdate Edate  date9. ;
label subid='Unique Subject Id'
	 Dose='Study Dose'
	 Sdate='Treatment Start Date'
      Edate='Treatment End Date';
Cards;
U001 05mg 10Mar2003 15Apr2003
U002 10mg 16May2003 14Jun2003
U003 15mg 17Jun2003 15Aug2003
Run;

/* Report */
Proc Print data=Mh label;
run;
********************************************
Data Mh2;
input Subid $ Dose $  Sdate : date9. Edate : date9. ;
format Sdate Edate  date9. ;
label subid='Unique*Subject*Id'
	 Dose='Study*Dose'
	 Sdate='Treatment*Start*Date'
      Edate='Treatment*End*Date';
Cards;
U001 05mg 10Mar2003 15Apr2003
U002 10mg 16May2003 14Jun2003
U003 15mg 17Jun2003 15Aug2003
Run;
/* Report */
Proc Print data=Mh2 label split='*';
run;
***************************************************
data class2;                                                                                                                            
set sashelp.class;                                                                                                                      
label name='Subject Name'                                                                                                               
      Sex  ='Gender'                                                                                                                    
       Age='Age in Years'                                                                                                               
      Height='Height in Cms'                                                                                                            
       weight= ' Weight in Pounds';                                                                                                     
Run;
*********************************************************
/* Remove Labels and formats */
data class2;
set class2;
label name =' '                                                                                                                         
      sex = ' '                                                                                                                         
      Height=' '                                                                                                                        
       weight= ' ';                                                                                                                     
run;
*************************************************
Setinit Procedure...

Displays all Product information which is available in SAS Tool in Log Window.

Proc Setinit;                                                                                                                          
run;                                                                                                                                    



SAS/Access..
One of the product in SAS Tool. Using SAS/Access component to build a connectivity from SAS to external sources and run the data flow.

SAS Access interface to PC Files: Using this component, build a connectivity from SAS to PC files and run the data flow.
These PC files are Excel, Access, txt, tab and csv files.

Import procedure ...  Import the data from PC files to SAS.

Proc import datafile ='<file path>'
Out=<dataset>  dbms=<dbms type> <options>;
<statements>;
Run;

datafile option: Enable to specify PC files or location of the PC files.

out option: Enable to specify the name of the dataset.

Dbms option: Database management system.
dbms components are similar to external engines and build a connectivity from SAS to external source.

File	Extension Name	DBMS Type
Excel 94, 95	.xls	excel95
excel98	.xls	excel98
Excel2000/2003	.xls	Excel2000, excel
Access	.mdb	Access
Text	.txt	DLM
Tab	.txt	DLM/Tab
csv	.csv	DLM/Csv


Import from Excel Files...

Nature of Excel file: Excel is one of the data entry and data analysis tool.
In excel file, data is available in sheets.
Each sheet contains 256 columns and 65000 Records.
In excel file, we can create up to 256 sheets.
Excel stores the data up to 8GB. 


/* Import Procedure */
Proc import datafile ='E:\sas\source\xls\data.xls'
Out=Dm1 dbms=excel;
Run;

Note:
Import procedure default extract the data from first sheet of the excel file as well as default recognizes the first record as variable names.
Sheet='<sheetname$>';
By default, SAS gets the data from Sheet1 of the excel file. (sheet= 'Sheet1$';). we have to use Sheet statement for sheets other than sheet1. We have to use $ symbol after the name of the sheet for SAS v9.0 and below versions. No need to use $ symbol for SAS v9.1 onwards.


/* Import Procedure */

Proc import datafile ='E:\sas\source\xls\data.xls'
Out=Dose  dbms=excel;
sheet= 'Sheet2';
Run;

data dose;
set dose;
labels pid= 'Product Id'
drug = 'Preferred Drug'
Dose ='Dose in mg';
run;

In excel file, data is available without column names.

Getnames statement: It controls SAS systems for collection of variable names.
Getnames=Yes/No;
Default is Yes.
Yes: To recognize first record as variable names.
No : To recognize first record onwards values.


Proc import datafile ='E:\sas\source\xls\data.xls'
Out=srini1  dbms=excel;
sheet= 'Srini';
Getnames=no;
Run;

data srini2;
set srini1;
rename f1=Prdid
f2=sex
f3=age
f4=race
f5=color;
run;

Proc Print data=srini2;
run;


Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm4  dbms=excel;
sheet= 'Demo1$A1:D12';
Run;


Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm5  dbms=excel;
Getnames=no;
sheet= 'Demo1$B5:D14';
Run;


Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm6(keep=Name age)  dbms=excel;
sheet= 'Demo1$';
Run;


Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Emp_det  dbms=excel;
Getnames=Yes;
sheet= 'Srini3$';
Run;

Proc Print data=Emp_det;
Run;

data Emp_det;
set emp_det;
format jdate rdate;
run;

Data available without Variable Names  in excel files..
We have to use Getnames=no; Statement.
Then SAS default Gives names as F series..
ex: F1, f2,f3,......Fn.


Proc import datafile ='E:\sas\source\xls\data2.xls'
Out=Test_form  dbms=excel;
Getnames=No;
sheet= 'Sheet9$';
Run;

Proc Print data=Test_form;
Run;

By SAS default, Getnames=Yes;

Proc import datafile ='E:\sas\source\xls\data2.xls'
Out=Test_form2  dbms=excel;
Getnames=No;
sheet= 'Sheet9$';
Mixed=Yes;
Run;

Proc Print data=Test_form2;
Run;

Read part of the data using Cell Range:
Sheet='<sheet name>$<range>';

Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm4  dbms=excel;
sheet= 'demo1$A1:D12';
Run;

Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm5  dbms=excel;
getnames=No;
sheet= 'demo1$B5:D14';
Run;

Read part of the data using column names:

Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm6(keep=name age)  dbms=excel;
sheet= 'demo1$';
Run;

Keep option:  Keeps the required variable names.

Read nonstandard data from excel file(Date&Time):

Proc import datafile ='E:\sas\source\xls\data2.xls'
Out=MchLife  dbms=excel;
sheet= 'Sheet8$';
Run;

Proc Print data=MchLife;
Run;

In these cases, no need to use informat and format techniques for date&time values. Why because, SAS default takes date9. for dates and time8. for Time.
 

Datatypes Specifications for Excel...

Values in Excel Columns	Data Types for SAS
In columns all values are numeric	Numeric
In columns all values are character	character
Mixed Values In Column	 
Numeric>Char in first 8 cells	Numeric
Char>Numeric in first 8 cells	character
Char=Numeric in first 8 cells	Numeric/Both


Mixed Statement: It Controls data reading whenever collect mixed values from excel to SAS.
Mixed=Yes/No;

Default is No.
No: Read either numeric/character
Yes: read both numeric & character, read all the values in character format.
This feature is available from SAS V9.1 onwards.

Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Mixed  dbms=excel;
Getnames=Yes;
sheet= 'Mixed$';
Mixed=Yes;
Run;

Proc Print data=Mixed;
Run;

Advance Statements in Import Procedure for Excel:
These statements are available from SAS V9.2 onwards.

Startcol statement: enable to specify column number(1-256) to start the reading.

startcol='<column number>';  

endcol statement: enable to specify column number(1-256) to stop the reading.

endcol='<column number>';  

Startrow statement: enable to specify row number(1-65000) to start the reading.

startrow=<row number>;  

endrow statement: enable to specify row number(1-65000) to start the reading.

endrow=<row number>;  

namerow statement: enable to specify row number for collection of variable names.

namerow=<row number>;  

Note: These Advance statements dbms type must be xls.

Proc import datafile ='E:\sas\source\xls\data1.xls'
Out=Dm  dbms=XLS;
sheet= 'Demo1';
startcol='2';
endcol='4';
Startrow=4;
endrow=12;
namerow=1;
Run;

Proc print data=Dm;
run;


Proc import datafile ='E:\sas\source\xls\source2.xls'
Out=Market  dbms=XLS;
sheet= 'Sheet3';
startcol='3';
endcol='5';
Startrow=9;
endrow=26;
namerow=4;
Run;

Proc print data=Market;
run;

Import the data from MS-Access tables:

MS Access...

It is a Microsoft database or Desktop database..
In access file, data is available in tables.
Each table contains 64 columns and 256 Records.
Access file stores the data up to 2GB.

Syntax:
Proc import table=<table name> out=<dataset name> dbms=access <options>;
database = '<File path>';
run;


Proc import table=Customers  out=Custtrans dbms=access;
database = 'E:\sas\source\accs\data-new.mdb';
run;

Read part of the data Using column names:

Proc import table=Customers  out=Custtrans2(keep=Custno goods) dbms=access;
database = 'E:\sas\source\accs\data-new.mdb';
run;


Proc import datafile='E:\sas\source\xls\data1.xls' 
out=Largeds dbms=excel;
Sheet='Largedata$';
Run;

Proc export outtable=Largds  data=Largeds dbms=access;
database = 'D:Largeds.mdb';
run;

Import data from Delimiter Files...
These are Txt, Csv, Tab files.

From txt files:
Similar syntax of excel.
Syntax:
Proc import datafile='<file path>'
out=<dataset name> dbms=dlm <options>;
<statements>;
Run;

Ex:
Proc import datafile='E:\sas\source\dlm\data2.txt'
out=Mh dbms=dlm;
Delimiter=',';
Run;

Note:
To use import procedure to import data from Dlm files, SAS Backend generates dataset Block Applications.
Dataset Block is more efficient for txt Files.

Example : Check in log after submitting the following cose...

Proc import datafile='E:\sas\source\dlm\tab.txt'
out=Medi2 dbms=Tab;
Run;


/**********************************************************************                                                                
 *   PRODUCT:   SAS                                                                                                                     
 *   VERSION:   9.00                                                                                                                    
 *   CREATOR:   External File Interface                                                                                                 
 *   DATE:      08MAR14                                                                                                                 
 *   DESC:      Generated SAS Datastep Code                                                                                             
 *   TEMPLATE SOURCE:  (None Specified.)                                                                                                
 ***********************************************************************/                                                               
    data MEDI2                                       ;                                                                                  
   %let _EFIERR_ = 0; /* set the ERROR detection macro variable */                                                                      
    infile 'E:\sas\source\dlm\tab.txt' delimiter='09'x MISSOVER DSD lrecl=32767 firstobs=2 ;                                            
       informat pid best32. ;                                                                                                           
       informat Visit $5. ;                                                                                                             
       informat Drug $8. ;                                                                                                              
       format pid best12. ;                                                                                                             
       format Visit $5. ;                                                                                                               
       format Drug $8. ;                                                                                                                
    input                                                                                                                               
                pid                                                                                                                     
                Visit $                                                                                                                 
                Drug $                                                                                                                  
    ;                                                                                                                                   
    if _ERROR_ then call symput('_EFIERR_',1);  /* set ERROR detection macro variable */                                                
    run;                                                                                                                                
                                                                                                                                        
                                                                                                                                        
                                                                                                                                   

Data available without Variable Names...
Then SAS default Gives names as Var series..
ex: var1, var2, var3.......varn.


Proc import datafile='E:\sas\source\dlm\data1.txt'
out=Dm dbms=dlm;
Delimiter='&';
Getnames=No;
Run;


In txt file, data is available without variable names, then import the data by the dataset block.
Ff the data is available with variable names, then import the data by Import procedure.


Import data from Tab Files...
Ex:

Proc import datafile='E:\sas\source\dlm\tab.txt'
out=Medi1 dbms=dlm;
Delimiter='09'x;
Run;

Proc import datafile='E:\sas\source\dlm\tab.txt'
out=Medi1 dbms=Tab;
Run;


Import data from Csv Files...
Nature of Csv file..
Created by the excel and we can create only one sheet in csv file, Backend values are separated by commas.


Proc import datafile='E:\sas\source\csv\data.csv'
out=Market dbms=Csv;
Run;


/* Or */ 

Proc import datafile='E:\sas\source\csv\data.csv'
out=Market dbms=Dlm;
Delimiter = ',';
Run;

Note:  SAS V9.1 and below versions, Dlm,Tab,Csv types do not support to dataset options in the Import procedure. But the Higher versions(v9.2 onwards) will support this feature.

Ex: 

Proc import datafile='E:\sas\source\csv\data.csv'
out=Market2( keep=state Sale)  dbms=Dlm;
Delimiter = ',';
Run;


Export Procedure...
Export the data from SAS to PC files.

Export Data into Excel files...
Syntax :
Proc Export outfile= '<File Path>' data=<dataset> dbms=excel <options> ;
Statements;
Run;
Syntax:
Proc Import datafile= '<File Path>' out=<dataset> dbms=excel <options> ;
Statements;
Run;
                                                                                                                                       
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 


Proc Export outfile= 'D:\excel1.xls' data= user1.Ae   dbms=excel;
Run;

Note: SAS default assigns dataset name as Sheet name.
Sheet Statement: Assigns Sheet name explicitly...

Ex:
Proc Export outfile= 'D:\excel1.xls' data= user1.customers   dbms=excel;
Sheet='Sheet1';
Run;

Export part of the variables and part of the values from SAS....

Proc Export outfile= 'D:\Custdata.xls' data= user1.Ae(Keep=Subid Actype Firstobs=5 Obs=20)   dbms=excel;
Sheet='Adevents';
Run;

Note: SAS default exports the data with variables.

Labels: Export the data instead of variable names. This feature is available from SAS v9.1 onwards.
In these cases, dataset existed with labels.


/* Create datasets with labels*/
data employee;
input bchcode $ eid $ salary;
label bchcode ='Branch Code'
Eid='Employee Unique Id'
Salary='Salary in Dollars';
Cards;
B101 E101 39000
B102 E102 45000
B103 E103 48000
B104 E104 54000
Run;

/*Export into Excel File */
Proc Export outfile='D:\Empdata.xls' data=Employee dbms=Excel Label;
Sheet='Emp_Det';
Run;



Export Data into Access files...

Syntax :
Proc Export outtable= <Table Name> data=<dataset> dbms=access <options> ;
database='<File Path>';
Statements;
Run;
Syntax for import:
Proc Import table=<Table Name> out=<dataset name> dbms=access <options>;
database='<File Path>';
Statements;
Run;

                                                                                                                                       
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

Proc Export outtable= Table_cust data=User1.customers dbms=access ;
database='D:\Custdata.mdb';
Run;

************ Large data**************************
Proc import datafile='E:\sas\source\xls\data1.xls' 
out=Largeds dbms=excel;
Sheet='Largedata$';
Run;

Proc export outtable=Largds  data=Largeds dbms=access;
database='E:\Custdata.mdb';
run;
proc export outtable=Largdata data=largDs dbms=access replace;
database='E:\saslarg.mdb';
run;
************ Large data**************************

Proc export outtable=Sales  data= User1.salesdata dbms=access;
database='D:\Custdata.mdb';
run;


Export part of the Variables

Proc export outtable=Sales1  data= User1.salesdata(Keep=state month sale) dbms=access;
database='D:\Custdata.mdb';
run;




Export Data into Delimiter files...
This Process can be done using 1.loading, 2.Reporting Processes.
Loading Process: Export the data without / with variable names. 
Loading process can be done using datastep block or Export Procedure.

Reporting Process: Export the data with variable names and adding titles, footnotes and some other reporting requirement.
Reporting process can be done using datastep block.

Managing Loading Process:
Loading Process by data step Block...
Data step block..
Run group of statements by the data step block without creating dataset.

Syntax: 
Data _null_;
<Statements>;
Run;
File Statement: Create PC files like txt, rtf and Pdf Files.
Put Statement: Bring Print values or text in log window or output window or Third party files.

Upload the data into Delimiter files..
 
File type	Dlm
Tab(.txt)	09'x
csv(.csv)	,
dlm(.txt)	Any


/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

/* Upload the data into txt files */
data _null_;
Set user1.ae;
File 'D:\Adevents.txt' dlm=',';
Put subid Actype;
Run;

Append the data into Existed txt files:
can be done by Mod Option.
Mod Option.. Appends the data into Existed delimiter files.

data _null_;
Set user1.salesdata;
File 'D:\Adevents.txt' dlm='&' Mod;
Put State Area;
Run;

Upload the data into delimiter files with variable names..
Pointers:
1. Column Pointers
2. Line Pointers

1. Column Pointers : 
Two types...
a). Column Hold pointers (@n) 
b). Column Skip pointers (+n) 

a). Column Hold pointers (@n)  n Represents Column number to be held at.
Example:  @1	@10	@30	@60
b). Column Skip pointers (+n)  n Represents skip number of Columns.
Example:		 +9	+20	+30	

2. Line Pointers: 
Two types...
a). Line Hold pointers   #n  
b). Line Skip pointers   / 

a). Line Hold pointers   #n  n represents the line number

b). Line Skip pointers   / 
/  ---> Skip one line 
// ---> Skip two lines and so on.....

Upload the data into txt files..

Application....

/* Upload variable names as text into txt file  */
Data _null_;
file 'D:\demo.txt';
Put @5 'Name' @ 15 'Gender' @25 'Age' @35 'Height' @45 'Weight';
Run ;
/* Upload values into txt File in append mode  */
Data _null_;
Set sashelp.class;
file 'D:\demo.txt' Mod;
Put @5 Name @ 15 Sex @25 Age @35 Height @45 Weight;
Run ;


Upload the data into tab files..

Application....
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

/* Upload variable names into txt file  */
Data _null_;
file 'D:\Custdata.txt';
Put 'Custno' '09'x  'Bchcode' '09'x 
 'Prd_code' '09'x 'Month' '09'x 
'Goods';

Run ;
/* Upload values into  File in append mode  */
Data _null_;
Set user1.Customers;
file 'D:\Custdata.txt' Mod DLM='09'x;
Put Custno Bchcode PrdCode Month Goods;
Run ;

Loading Process by Proc Export Block...

If it is export procedure, then SAS backend generates datastep block.

Export Data into Delimiter files...
Syntax :
Proc Export outfile= '<File Path>' data=<dataset> dbms=dlm <options> ;
Statements;
Run;

For Txt Files..
Application..

Proc Export outfile= 'D:\sales.txt' data=User1.salesdata dbms=dlm;
Delimiter='&';
Run;

Note: Like for Import, Export Proc will involve default backend generation of dataset block. for details check out the log.

Proc Export outfile= 'D:\sales.txt' data=User1.salesdata dbms=dlm;
Delimiter='09'X;
Run;

Proc Export outfile= 'D:\Custdb.txt' data= user1.Customers dbms=Tab;
Run;

For Csv Files...
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

Proc Export outfile= 'D:\sale.csv' data=User1.salesdata dbms=csv;
Run;


Reporting Process:
Report:
Generates reports in third party files like RTf, txt.
This process can be implemented by the datastep block.


Application:
Proc import datafile='E:\sas\source\xls\data1.xls' out=Demo dbms=excel Replace;
Sheet='Demo1$';
Run;

/* Upload titles and info */

Data _null_;
file 'E:\Dm_Listing.rtf';
Put @15 'Subject Physical Information';
Put ' ' ;
Put @1 'Date: 09/03/2014'  @39 'Time  04:44:05 AM';
Put ' ';
put @5 'Subject'  @18 'Subject' @36 'Subject';
Put @5 'Name'  @18 'Age' @36 'Gender';
Put 50*'_';
Run;


/* Upload Values in append mode  */
data _null_;
set Demo;
file 'E:\Dm_Listing.rtf' MOD;
Put  @5 Name  @18 Age @36 Sex;
Run;

/* Upload footnotes and info */

data _null_;
file 'E:\Dm_Listing.rtf' MOD;
Put 50*'_';
Put @1 'Version: SAS v9.0';
Put @1 'User: Akula Srinivas';
Put 50*'_';
Put @1 'Output: Listing'  @30 'File Type: RTF';
Run;


Single trailing Method: 
data _null_;
set demo;
File 'D:\TestDemo.txt';
Put @ 20 Name ;
Put@ 35 Age ;
Put @ 50 Sex;
Run;

data _null_;
set demo;
File 'D:\TestDemo22.txt';
Put @ 20 Name @;
Put@ 35 Age  @;
Put @ 50 Sex ;
Run;



Conditional Statements..

In SAS, 2 Conditional statements are available.

1). Where Statement
2). If Statement
  
Conditional statements are running according to Condition. These conditions are made by the operators with operands(variables).

In SAS, Operators are 3 types.
a). Arithmetic Operators
b). Comparison Operators
c). Logical Operators

a). Arithmetic Operators
 Run Arithmetical Operations or calculations.
These are +, -, *, / .

b). Comparison Operators

Symbols 	Letters	Meaning
>	GT	Greater Than
<	LT	Less Than
=	EQ	Equal to
^=	NE	Not Equal to
~=	NE	Not Equal to
>=	GE	Greater Than or Equal to
<=	LE 	Less Than or Equal to







c). Logical Operators

                                                                                                                                        
Symbols 	Letters
&	And
|	OR
!	OR
 	Between
 	Not
 	In
 	Not in
 	Like
 	Contain



1). Where Statement :
Read part of the data condition base.
This process can be called Filter Transformation.
Where Statement can be used in dataset block as well as Procedure Block.
Run Applications using Filters...

/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

/* Run data using Filters*/ 

proc print data=user1.market;                                                                                                           
where  cname='Tcs'  ;                                                                                                        
run;

proc print data=user1.market;                                                                                                           
where  cname='Cts'  ;                                                                                                        
run;

proc print data=user1.market;                                                                                                           
where  invest > 5000000  ;                                                                                                        
run;

AND Operator...
Run the operation in dependent mode.            
OR Operator...
Run the operation in independent mode.   
         
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

/* Run data using Filters*/ 
/* and opr */
proc print data=user1.market;                                                                                                           
where  cname='Tcs'  and invest >= 5000000 ;                                                                                                        
run;
/* OR opr */
proc print data=user1.market;                                                                                                           
where  cname='Tcs'  or cname='Cts' or Cname='Satyam' ;                                                                                                        
run;

/* In Opr */
proc print data=user1.market;                                                                                                           
where  cname  in('Tcs' ,'Cts', 'Satyam') ;                                                                                                        
run;
proc print data=user1.market;                                                                                                           
where  invest  in(5000000, 2000000, 7000000) ;                                                                                                        
run;



/* Not in */
proc print data=user1.market;                                                                                                           
where cname not in (Tcs' ,'Cts', 'Igate', 'Satyam' ) ;                                                                                       
run;                                                                                                                                    
proc print data=user1.market;                                                                                                           
where invest not in (2000000, 7000000, 5000000 ) ;                                                                                       
run;


/* not operator  */
proc print data=user1.market;                                                                                                           
where not (invest >= 5000000) ;                                                                                                        
run;
proc print data=user1.market;                                                                                                           
where not  (cname='Tcs') ;                                                                                                        
run;

Between Option..
It produces the result using range and it can be used only for numeric data.


proc print data=user1.market;                                                                                                           
where  invest between 5000000 and 7000000 ;                                                                                                        
run;

/* Or */

proc print data=user1.market;                                                                                                           
where  invest >= 5000000 and invest <=7000000 ;                                                                                                        
run;


Like Operator....
It produces the result using part of the matching or pattern matching. It can be used only for Character Data.
% -- It Controls Multiple Characters.
_  -- Controls Only One Character.

Proc Print data=sashelp.class;
where name like 'J%';
Run;
proc print data=user1.market;                                                                                                           
where  cname like 'T__' ;                                                                                                        
run;
proc print data=user1.market;                                                                                                           
where  cname like 'C%' ;                                                                                                        
run;
proc print data=user1.market;                                                                                                           
where  cname like 'Ig_%' ;                                                                                                        
run;


Proc Print data=sashelp.class;
where name like 'J%e';
Run;

Proc Print data=sashelp.class;
where name like '%e';
Run;

Proc Print data=sashelp.class;
where name like 'J___';
Run;

Contain Operator..
It can be used for character data.


Proc Print data=sashelp.class;
where name contain 'e';
Run;


Report Missing values....

         
/* Collect datasets  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

Numeric Missing...

proc print data=user1.market;                                                                                                           
where  invest = . ;
run;

/* Or */

proc print data=user1.market;                                                                                                           
where  invest is missing ;
run;



Character Missing...

/* Character Missing... */

proc print data=user1.market;                                                                                                           
where  area is null ;
run;
/* or */


proc print data=user1.market;                                                                                                           
where  area = ' ' ;
run;
Report Missing Records....

proc print data=user1.market;                                                                                                           
where  area = ' ' or cname= ' ' or invest= . or shprice= . ;
run;


Report Non-missing Records....



proc print data=user1.market;                                                                                                           
where  area ~= ' ' & cname ~= ' ' & invest ~= . & shprice ~= . ;
run;


Where Option....

It is one of the dataset option and read part of the data Conditional base.
Similar nature of Where statement.
It can be used in dataset block as well as Procedure Block.
Syntax : 
Where=(<condition>);


/* Use in Proc Block */
Proc Print data=user1.Market  (where(invest>=5000000));
Run;

Data Market1;
Set user1.Market;
Where cname='Tcs';
run;

/* or*/
Data Market1;
Set user1.Market(Where=( cname='Tcs'));
run;


Difference between where statement and where option..
Where statement can be used in dataset block and procedure Block except import and export procedures.
	
Where option can be used in dataset block and procedure Block including import and export procedures.

Run the filters in Import Procedures...
For excel...

proc import datafile='E:\sas\source\xls\data1.xls' Out=dm1(where=(sex='M')) dbms=excel Replace;
Sheet= 'Demo1$';
Run;


For Access.. .

Proc Import table=Ae out=aedata(where=(Actype ~=Null )) Dbms=access;
database= 'E:\sas\source\accs\data-new.mdb';
Run;


Run the filters in Export Procedures...
For Excel...
Proc Export outfile='D:\Clinic.xls'  data=sashelp.class(where=(Sex='M'  & age >=14)) Dbms=excel;
Sheet='Sex_M' ;
Run;

For Access...
Proc Export outtable=Class  data= sashelp.class(where=(Sex='M'  & age >=14)) Dbms=access;
database= ='D:\Clinic.mdb'  ;
Run;


Assign the values to the variable by Assign Operator...
Data Mh;
Subid=101;
Dose='Asp-05Mg';
Sdate='12Feb2003'd;
Stime='14:23't;
Edtimee='15Jun2003:10:23:45'dt;

Proc print data=mh;
format Sdate date9. Stime time5. Edtime datetime18.;
Run;


Assign multiple values....
data emp;
eid=101; output;
eid=102; output;
eid=103; output;
eid=104; output;
eid=105; output;
run;
Proc print data=emp;
run;

data emp2;
eid=101;
salary=1000; output;
eid=102; 
 salary=3000; output;
eid=103; 
salary=4000; output;
eid=104;
salary=5000; 
 output;
eid=105; 
salary=6000; 
output;
run;
Proc print data=emp2;
run;



Output Statement....
Stores values or observations in datasets.

Syntax: Output <dataset name>;


Data Demo;
Subid=101;
Gender='Female';
Age=24;
Race='Asian';
Output Demo;
Subid=102;
Gender='Male';
Age=34;
Race='Asian';
Output Demo;
Subid=103;
Gender='Female';
Age=21;
Race='Asian';
Output Demo;
Subid=104;
Gender='Female';
Age=44;
Race='Asian';
Output Demo;

Proc print data=Demo;
run;



Expression Transformations;
Run the calculations or data manipulations..

/* Source data */
Data Emp_salaries;
input Eid $ Salary Sale;
Cards;
E101	3000	540
E102	3200	420
E103	3400	240
E104	3600	320
E105	3800	420
E106	4000	540
E107	4200	400
E108	4400	600
E109	4600	540
E110	4800	420
E111	5000	240
E112	5200	320
E113	5400	420
E114	5600	540
E115	5800	400
;

/* Create new variables by Expression Transformations */

Data emp1;
Set Emp_salaries;
Newsalary=salary+1000;
Run;
Proc print data=emp1;
run;
IF Statement...
Run the Operation or Statement conditional Base.

Syntax :
IF <Condition> Then <Statements>;
/* Or */
IF <Condition> Then <Statements>;
else <Statements>;

/* Or */
IF <Condition> Then <Statements>;
else If <Condition>  Then  <Statements>;
else If <Condition>  Then  <Statements>;
else <Statements>;

Run the expression Conditional Base........

Condition	Expression
Sale >=500	Salary+2000
Sale<500	Salary+1000



/* Source data */
Data Emp_salaries;
input Eid $ Salary Sale;
Cards;
E101	3000	540
E102	3200	420
E103	3400	240
E104	3600	320
E105	3800	420
E106	4000	540
E107	4200	400
E108	4400	600
E109	4600	540
E110	4800	420
E111	5000	240
E112	5200	320
E113	5400	420
E114	5600	540
E115	5800	400
;

/* Create new variables by Expression Transformations on Conditional Base */

Data empnew;
Set Emp_salaries;
If Sale >=500 then Newsalary=salary+2000;
Else Newsalary=salary+1000;

Run;
Proc print data=empnew;
run;



Condition	Expression
Sale >=500	Salary+2000
Sale >=350& Sale <500	Salary+1500
Sale>200 & Sale <350	Salary+1000
Sale <=200	Salary+500



/* Create new variables by Expression Transformations on Conditional Base */

Data empnewSal;
Set Emp_salaries;
If Sale >=500 then Newsalary=salary+2000;
else if Sale>=350 & Sale <500 then Newsalary=salary+1500;
else if  Sale>200 & Sale <350 then Newsalary=salary+1000;
Else Newsalary=salary+500;

Run;
Proc print data=empnewSal;
run;

Condition	Expression
Sale >=500	Excellent
Sale >=350& Sale <500	Good
Sale>200 & Sale <350	Average
Sale <=200	Poor


Data empnewSal2;
Set Emp_salaries;
If Sale >=500 then Rating='Excellent';
else if Sale>=350 & Sale <500 then Rating='Good';
else if  Sale>200 & Sale <350 then Rating='Average';
Else Rating='Poor';

Run;
Proc print data=empnewSal2;
run;



Condition	Expression	Expression
Sale >=500	Salary+2000	Excellent
Sale >=350& Sale <500	Salary+1500	Good
Sale>200 & Sale <350	Salary+1000	Average
Sale <=200	Salary+500	Poor


Do Block...
Allows Multiple/Group of statements to run in single instance.
Do block should be used with IF Statement Block.


Data empnewSal3;
Set Emp_salaries;
If Sale >=500 then do;
Newsalary=salary+2000;
Rating='Excellent';
End;
else if Sale>=350 & Sale <500 then Do;
Newsalary=salary+1500;
Rating='Good';
End;
else if  Sale>200 & Sale <350 then Do;
Newsalary=salary+1000;
Rating='Average';
end;
Else Do;
Newsalary=salary+500 ;
Rating='Poor';
end;

Run;
Proc print data=empnewSal3;
run;

Go to Block......
Similar to Do Block...
Calls the label Conditional Basis.
Label Run Group of Statements..
Go to Block Process is Forward and Backward Process. So, It will take more processing time compared to Do Block.
So, Do block is efficient.

Data EmpNewsal_rating;
Set Emp_salaries;

If Sale >=500 then Go to case1;
else if Sale>=350 & Sale <500 then Go to case2;
else if  Sale>200 & Sale <350 then Go to case3;
Else Go to case4;

Case1: Newsalary=salary+2000;
Rating='Excellent';
Return;
Case2 : Newsalary=salary+1500;
Rating='Good';
Return;
Case3 :
Newsalary=salary+1000;
Rating='Average';
Return;
Case4 :Newsalary=salary+500 ;
Rating='Poor';
Return;


Run;
Proc print data= EmpNewsal_rating;
run;

Proc contents data= EmpNewsal_rating;
run;

Generate date values Conditional Base...

Data Trails;
Input Site_no $ Arm $ SubId Dose $;
Cards;
S1	Arm1	101	Asp-05mg
S1	Arm1	102	Asp-10mg
S1	Arm2	103	Asp-15mg
S1	Arm2	104	Asp-05mg
S1	Arm3	105	Asp-10mg
S1	Arm3	106	Asp-15mg
S2	Arm1	201	Asp-05mg
S2	Arm1	202	Asp-10mg
S2	Arm2	203	Asp-15mg
S2	Arm2	204	Asp-05mg
S2	Arm3	205	Asp-10mg
S2	Arm3	206	Asp-15mg
Run;


Requirement...
Specifications for Generating date values...
Asp-05mg Treatment was Started 14May2007. After 2 Weeks, Depending on Asp-05mg Safety data, Asp-1omg was Started. After 5 Weeks, Depending on Asp-10mg Safety data, Asp-15mg was Started.

Inference: Key date value: 14May2007.
Key Variable : Dose.
Application:
Data Trials_dates;
Set Trails;
If Dose ='Asp-05mg' Then Sdate='14May2007'd;
Else if Dose='Asp-10mg' Then Sdate='14May2007'd+13;

Else Sdate='14May2007'd+48;
Format SDate Date9.; 
Run;

Proc print data= Trials_dates;
Run;


Split the data one dataset to multiple datasets /
Create multiple datasets by the dataset Block....

Data Mh1 Mh2 Mh3;
Set Trials_dates;
If dose='Asp-05mg' Then Output Mh1;
Else If dose='Asp-10mg' Then Output Mh2;
Else Output Mh3;
Run;



Run the data Conversions by the IF Statements..
Data Conversions are Char to Numeric, Numeric to Numeric,  Numeric to Char, Char to Char.

Numeric to Character  & Character to Character

/* Extraction */ 
Proc import datafile='E:\sas\source\xls\data.xls' Out=Dmsource
Dbms=Excel Replace;
Sheet='Sheet4$';
Run;

/* Transformations */
Data Dmtrans;
Set Dmsource;
Length S $ 7 R $ 8 C $ 7;
If Sex=1 Then S='Male';
Else S='Female';
If Race = 'As' Then R='Asian';
Else R='African';
If Color='w' Then C='White';
Else C='Black';
drop Sex Race Color;
Rename S=Sex R=Race C=Color;
Run;
Proc print data= Dmtrans;
Run;

Numeric to Numeric / Character to Numeric...

/* Extraction */ 
Proc import datafile='E:\sas\source\xls\data.xls' Out=Mhsource
Dbms=Excel Replace;
Sheet='Sheet5$';
Run;

/* Transformations */
Data Mhtrans;
Set mhsource;

If Visit='V1' Then V=1;
Else If Visit='V2' Then V=2;
Else  V=3;
If Dose=1 Then D=0.05;
Else If Dose=2 Then D=0.10;
Else D=0.15;
Drop Visit Dose;
Rename V=Visit D=Dose;
Run;


Proc print data= mhtrans;
Run;
LOOPS....

Run Statement or Group of Statements Multiple times.

Requirements...
Loop Variable
Condition
Increment or Decrement


Loops are Three Types...
1). Do While
2). Do Until
3). Do Loop

1). Do While --> Run the Statement as long as the condition is true or Until the Condition is False.

2). Do Until --> Run the Statement as long as the condition is False or Until the Condition is True.
3). Do Loop --> Similar Nature of Do While.


Generate the values by loops........

data emp;
i=1;
do while (i <=50);
eid=100+i;
output;
i=i+1;
end;
drop i;
RUN;

proc print data=emp;
run;
                                                                                                                                      
data emp6;                                                                                                                              
Eid=101;                                                                                                                                
Do Until (eid>150);                                                                                                                       
Eid = Eid;                                                                                                                              
Output;                                                                                                                                 
Eid= Eid+1;                                                                                                                             
End;                                                                                                                                    
Run;                                                                                                                                    
data emp2;
i=1;
do until (i >50);
eid=100+i;
output;
i=i+1;
end;
drop i;
RUN;

proc print data=emp2;
run;
                                                                                                                                        
data Numbers;                                                                                                                           
i=100;                                                                                                                                  
do while (i<=150);                                                                                                                      
i=i;                                                                                                                                    
Output;                                                                                                                                 
I=i+1;                                                                                                                                  
end;                                                                                                                                    
Run;                                                                                                                                    
                                                                                                                                      
data Numbers3;                                                                                                                          
i=100;                                                                                                                                  
do until (i>150);                                                                                                                       
Eid=i;                                                                                                                                  
Output;                                                                                                                                 
I=i+1;                                                                                                                                  
end;                                                                                                                                    
Drop I;                                                                                                                                 
Run;                                                                                                                                    
                                                                                                                                        
                                                                                                                                        

data emp3;
i=1;
do until (i >300);
eid=eid+i;
output;
i=i+1;
end;
drop i;
RUN;

proc print data=emp3;
run;


Difference Between Do while and Do Until....

Do While	Do Until
1) Run The Loop Depending on the True Condition.	1) Run The Loop Depending on the False Condition.
2) Condition Fail in initial Stage, Loop wiil not run even for One Time.	2) Condition Fail in initial Stage, Loop wiil  run Minimum One Time.
Data Test1;
i=100;
Do while (   i >=150);
i=i;
output;
i=i+1;
End;
Run;	Data Test2;
i=100;
Do Until  ( i>50);
i=i;
output;
i=i+1;
End;
Run;



Do Loop....

Applications.............

data int2;
do i=1 to 300 by 1;
output;
end;
run;


data int3;
do i= 300 to 1 by -1;
output;
end;
run;

Data Emp;
Do Eid=101 to 150 by 1;
Output;
end;
Run;


Nested Loop-->
Loop is existed within the loop.
Generate the values for multiple variable by the nested loops.


Site_no	Subid
1	1
1	2
1	3
1	4
1	5
1	6
2	1
2	2
2	3
2	4
2	5
2	6
3	1
3	2
3	3
3	4
3	5
3	6


data Demo;
Site_no=1;
Do while (Site_no <=3);
Subid=1;
Do while (Subid <=6);
Site_no= Site_no;
Subid= Subid;
Output Demo;
Subid=Subid+1;
End;
Site_no= Site_no+1;
End;
Run;

Proc Print data=Demo Noobs;
Run;


Data Dm;
Do Site_no=1 to 3;
Do Subid=1 to 6;
Output Dm;
End;
End;
Run;
Proc Print data=Dm Noobs;
Run;

Data Test;
Do i=1 to 20;
x='Dm';
Output;
end;
Drop I;
Run;

Proc Print data=test Noobs;
Run;


Data _null_;
File 'D:\text.Rtf';
Do i=1 to 200;
x='Akula Srinivas';
put @5 x @25 'Clinical SAS Programmer';
end;
Run;

Data Test3;
Do i=1 to 10 by 2;
i=i*5;
output test3;
end;
Run;


Proc Print data=test3 Noobs;
Run;

In the above application, i values are 5 & 35. and last i value is 37.


Data Test4;
Do i=1 to 10 by 2;
i=i-1;
output test4;
end;
Run;


Proc Print data=test4 Noobs;
Run;

In the above application, i values are 0 to 9. and last i value is 11.



Global Statements.....
Title statement...
Generates the output in Output window.
Default Title is 'The SAS System'.
We can place Upto 10 Titles.
Applications....                                                                                                                                       

/* Create Library  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

Title 'Adverse Events Information';
Proc Print data=User1.Ae;
Run;

/* Create Library  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles'; 

Title1 'Clinical Study Information';
Title2 'Adverse Events Information';
Title3 'Phase3 Data';
Proc Print data=User1.Ae;
Run;

*****************************************
Title2 'Adverse Events Information';
Title1 'Clinical Study Information';
Title3 'Phase3 Data';
Proc Print data=User1.Ae;
Run;
Note: Here, Title 2 Will not be displayed Because it is placed in wrong Order. Instead, 2nd Line Contains Blank.

*************************************************** 
Title1 'Clinical Study Information';
Title3 'Adverse Events Information';
Title5 'Phase3 Data';
Proc Print data=User1.Ae;
Run;
Note: Generates Gap Between The titles.Here, Between titles Blank lines results Because, 
Title 2 & 4 are not defined.
*********************************************

Null Title--->
Remove the titles from output window.
Example:
Title ' ';    /* Or   */
Title ;

Footnote--->
Generates the Foot Note.
Footnoten---> Generates Multiple Footnotes up to 10.

Footnote1 'Reported By: Akula Srinivas';
Proc Print data=User1.Ae;
Footnote2 'Clinical SAS Programmer';
Options Pageno=8; 
Run;

Null Footnote -->
Remove the footnotes.
Example;
Footnote;
Footnote ' ';

If we use Title and footnote Statement in dataset Block, Then SAS assign Permanent Titles and Footnotes.
Example:  

data User1.Ae;
set User1.Ae;
Title1 'Clinical Study Information';
Title2 'Adverse Events Information';
Title3 'Phase3 Data'; 
Footnote1 'Reported By: Akula Srinivas';
Footnote2 'Clinical SAS Programmer';
Run;

Proc Print data=User1.Ae;
Run;



***************************************************************************                                                                                                                                     
/* Create Library  */                                                                                                                   
Libname user1 'e:\sas\source\sasfiles';                                                                                                 
                                                                                                                                        
 data User1.Ae;                                                                                                                         
set User1.Ae;                                                                                                                           
Title 'Clinical Study Information';                                                                                                     
Footnote 'Reported By: Akula Srinivas';                                                                                                 
Run;                                                                                                                                    
                                                                                                                                        
                                                                                                                                        
                                                                                                                                        
Proc Print data=User1.Ae;                                                                                                               
Run;       
********************************************************************

Dm Statement:
It controls SAS windows environment by the command.
Dm Log 'Clear';
Dm Out 'Clear';
Dm Edit 'Clear';
Dm Explorer 'Clear';

Dm 'Explorer';
Dm 'Log'; 
Dm 'Out';
Dm 'Edit'; 
Dm 'Results';
**************************
Dm Log 'Clear';
Dm Out 'Clear';
Cleans up the log & Output windows
**************************


Recall--->
Recalls the cleared code in Program Editor...
-> Recalls the application whenever the application is deleted from the Program Editor. This command should be used only in Command bar.

Submit Command---->
Submit the SAS Application.


FileName Statement--->
It creates Global Reference of the file.

Filename <File Ref> '<File Path>';

File Reference can be Given up to 8 Characters.
Example...

FileName Fn1 'E:\sas\source\xls\data.xls';

Proc Import datafile= Fn1 Out=Dm1 Dbms=Excel Replace;
Sheet='Sheet1$';
Run;


Proc Import datafile= Fn1 Out=mh Dbms=Excel Replace;
Sheet='Sheet2$';
Run;

FileName Fn2 'E:\sas\source\xls\data1.xls';

Proc Import datafile= Fn2 Out=LargDs Dbms=Excel Replace;
Sheet='Largedata$';
Run;


FileName Fn3 'E:\sas\source\xls\data2.xls';

Proc Import datafile= Fn3 Out=Pdose Dbms=Excel Replace;
Sheet='Sheet5$';
Run;

Filename savin 'E:\SAS\source\xls\data1.xls';
Proc import datafile=savin out=Stdlist Dbms=Excel replace;
Sheet='Stlist$';
Run;



******************************************************


Read the data from multiple Dlm Files to One Dataset:

 


 FileName Txtfile1 (
'E:\sas\source\dlm\demo1.txt'
'E:\sas\source\dlm\demo2.txt'
'E:\sas\source\dlm\demo3.txt'
) ;

Data Demo;
Infile Txtfile1;
Input Studyid $ Site_no $ Subid Age Gender $ Race $;
Run;

Proc Print data=Demo;
Run;








Types of Variables in SAS:

In SAS, variables are 2 Types
i).System Defined
Ii).User Defined

i).System Defined Variables/Automatic Variables..
These Variables are created by the SAS System.

They Start with Underscore and End with Underscore.


_all_  It Controls all the Variables 
_numeric_   It Controls all Numeric Variables.(System or User Defined).

_Char_ It Controls all Character Variables.(System or User Defined).


Split the dat from One dataset to multiple datasets according to datatypes..

Data Char;
Set Sashelp.class (keep=_char_);
Run;

Data Num;
Set Sashelp.class (keep=_numeric_);
Run;






SAS Backend Processes:

 

Input Stack:
It is a Logical Memory Unit and Storage Place of SAS Applications.
When we submit SAS Applications, then that application default stored in input Stack.


Word Scanner:
It is a Middle Layer between input stack and processors.
Here, word Scanner identifies the keywords and pass to respective/required Compilers or Processors.
This process is called 'Tokenization'.

The process that SAS uses to extract words and symbols from the input stack is called tokenization. Tokenization is performed by a component of SAS called the word scanner.


 

Input Buffer:
Logical Memory Unit and storage Place of variables and Observations.

SAS creates input buffer, whenever system reach Input Statement.


PDV Unit (Program Data Vector):
PDV interacts with input Buffer to collect record by record and run data error checking using two automatic variables.
these are :
_N_
_ERROR_


_N_  Returns the number of iterations. Similar to record number.
_ERROR_ it Returns the zero or One.
0.. No error in data. (Default)
1.. Error in data.

The two variables default displayed in log window, whenever error is occured in data.
Two automatic variables are created by every DATA step: _N_ and _ERROR_.


Automatic Variables :
Automatic variables are created automatically by the DATA step or by DATA step statements. These variables are added to the program data vector but are not output to the data set being created. The values of automatic variables are retained from one iteration of the DATA step to the next, rather than set to missing.
_N_
	is initially set to 1. Each time the DATA step loops past the DATA statement, the variable _N_ is incremented by 1. The value of _N_ represents the number of times the DATA step has iterated.
_ERROR_
	is 0 by default but is set to 1 whenever an error is encountered, such as an input data error, a conversion error, or a math error, as in division by 0 or a floating point overflow. You can use the value of this variable to help locate errors in data records and to print an error message to the SAS log.
***********************************************************
Scenario 1 : 
Code:
Data Sample;
Set sashelp.class;
Run;


 

In this scenario, there is no input statement. Here, PDV directly interacts with data step Compilers.

***********************************************************


Descriptive Information Unit.
It is created by the PDV Unit, whenever the dataset is existed.

Contents Procedure:
Reports Descriptive Information for Datasets.

Syntax:
Proc Contents data=<dataset name>;
Run;

Proc Contents data=Sashelp.Class;
Run;


Proc Contents data=Sashelp.Class
out=Disp_class;
Run;


Proc Contents data=Sashelp.Class
out=Disp_class2 noprint;
Run;


Noprint option ---> Suppress/avoid result in output window.

/* Collect datasets */
Libname user2 'E:\sas\source\sasfiles';



Proc Contents data=user2._all_
out=Disp_user2 noprint;
Run;

Proc Contents data=user2._all_
out=Disp2_user2;
Run;


Difference between IF statement to where statement to run the filter

Call IF statement without THEN Statement, then it produces the result similar to where statement.

data Dm1;
set sashelp.class;
where sex='M';
run;

data Dm2;
set sashelp.class;
If sex='M';
run;

 



 

 






Note : 
Where statement first runs condition checking, If the observation satisfy the condition, then the observation moves to PDV Unit for data error checking.
 
But, IF statement first runs the data error checking for all the records, Next runs  the condition checking.
So, IF statement will take more processing time when compared to where statement.

Run the condition using existing variables, then where condition is more efficient.

Run the conditions or filters using new variables, then, IF statement is more efficient. Why because new variables are created by the PDV Unit after data error checking.

Data Employee;
Input Eid $ Salary;
cards;
E101 4500
E102 5000
E103 2000
;
/* Where Statement */

data emp1 ;
set employee;
Newsal=salary+1000;
where newsal >=5000;  /* fails*/
Run;


data emp2 ;
set employee;
Newsal=salary+1000;
IF newsal >=5000;  
Run;


Read part of the data using record number...

data dm3;
set sashelp.class;
if _N_ in (2,7,14,16);
run;

Generate the report in output window using datastep block.

data _null_;
set sashelp.class;
file print;
put @10 Name @20 Sex @30 Age @40 Height @ 50 Weight;
Run;

***********************************************

data _null_;
set sashelp.class;
file print;
if _n_=1 then do;
put @10 'Name' @20 'Sex' @30 'Age' @40 'Height' @ 50 'Weight';
put ' ' ;
End;
put @10 Name @20 Sex @30 Age @40 Height @ 50 Weight;
Run;

***********************************************


Generate the report in log window using datastep block.
can be achieved without writing File statement.

Options nosource nonotes;
dm log 'Clear';
data _null_;
set sashelp.class;
file print notitle;
if _n_=1 then do;
put @10 'Name' @20 'Sex' @30 'Age' @40 'Height' @ 50 'Weight';
put ' ' ;
End;
put @10 Name @20 Sex @30 Age @40 Height @ 50 Weight;
Run;

************************************

Run the operations for reporting without creating sample datasets--->

data _null_ ;
set sashelp.class(keep=name sex age);
if sex='F' then S='Female';
else S='Male';
If age>=10 & age <12 then Ag ='10-12';
else If age>=13 & age <15 then Ag ='12-15';
else Ag='16-18';
File Print notitle;
If _n_ =1 then do;
put @10 'Name' @20 'Sex' @30 'Age intervals';
put ' ' ;
End;
put @10 Name @20 S @30 Ag;
Run;

Notitle Option-->

It removes / suppress the title for Current Output. This Option should be used only in File statement.
Note LS and PS options can be used in file statement to control linesize and pagesize for current output.
Logical variables:
These are temporary variables created by the user.
These are 2 Types.
1). First.variable
2). Last.variable

First.variable and last.variable returns One or Zero.
Default is 1.

Return part of the variable using logical variables...

If First.variable=1, then SAS returns first record from each group.

If First.variable=0, then SAS returns all records from each group except first record.


If last.variable=1, then SAS returns last record from each group.

If last.variable =0, then SAS returns all records from each group except last record.


Data Treatment ;
input subid $ Date : date9. Dose $;
Format Date : date9. ;
cards;
P101	13Jan2005	Asp-05mg
P102	14Jan2005	Asp-10mg
P101	19Jan2005	Asp-10mg
P103	19Jan2005	Asp-15mg
P102	20Jan2005	Asp-05mg
P101	25Jan2005	Asp-15mg
P103	25Jan2005	Asp-10mg
P102	26Jan2005	Asp-15mg
P104	26Jan2005	Asp-10mg
P101	31Jan2005	Asp-05mg
P103	30Jan2005	Asp-10mg
P102	01Feb2005	Asp-15mg
P104	02Feb2005	Asp-10mg
P105	02Feb2005	Asp-20mg
Run;

Task- To report each subject first visiting information.
Key variable subject id Subid.

Proc sort data=treatment out=trtsort;
by subid;
run;

Data Fvisit;
set trtsort;
by subid;
if first.subid=1;
run;
Proc print data=Fvisit;
run;


Task- To report each subject last visiting information.
Key variable subject id Subid.


Data lvisit;
set trtsort;
by subid;
if last.subid=1;
run;
Proc print data=lvisit;
run;

  /* Into 3rd party file */

Data _null_;
file 'D:\sasoutput.Rtf';
set trtsort;
by subid;
if _n_=1 then do;
Put @15 'Patient last Visit';
put @05 'Subject Id' @20 'Treated date' @35 'Dose' ;
Put ' ' ;
end;
if last.subid=1 ;
Put @5 Subid @20 date @35 Dose;
run; 


Task- To report each subject first as well as last visiting information.
Key variable subject id Subid.

Data Flvisit;
set trtsort;
by subid;
if last.subid=1 or First.subid=1;
run;
Proc print data=flvisit;
run;

Task- To report each subject except first and last visiting information.
Data ExcFlvisit;
set trtsort;
by subid;
if last.subid=0 & First.subid=0;
run;
Proc print data=excflvisit;
run;

Note...
These logical variables can be used in dataset block and report procedures.
Generate Transaction Numbers/Sequential Numbers/Unique Identity Numbers...

Retain Statement....
Assign initial value and reassign the previous value.
Retain  statement can be used for Numeric data or character data.

data trsqno;
set trtsort;
retain sqno 0;
sqno=sqno+1;
Run;

proc print data=trsqno;
run;

/* Or*/
data trtsqno;
set trtsort;
sqno+1;
Run;

proc print data=trtsqno;
run;

Generate Sequential number Group-wise:

Data Trt_Sqno_group;
set trtsort;
by subid;
if first.subid=1 then Visitid=0;
Visitid=Visitid+1;
Run;

Proc Print data= Trt_Sqno_group;
Run;
Data Trt_Sqno_group2;
set trtsort;
by subid;
if first.subid=1 then Visitid=0;
Visitid+1;
Run;

Proc Print data= Trt_Sqno_group2;
Run;

Data visit3;
set trtsort;
by subid;
If first.subid=1 then vist=0;
vist+1;
run;
Proc print data=visit3;
run;

 
Data visit3;                                                                                                                           
set trtsort;                                                                                                                            
by subid;                                                                                                                               
If first.subid=1 then vist=0;                                                                                                           
vist+1;                                                                                                                                 
run;                                                                                                                                    
Proc print data=visit3;                                                                                                                 
run;                                                                                                                                    

Data visit4;                                                                                                                           
set trtsort;                                                                                                                            
by subid;                                                                                                                               
If first.subid=1 then vist=0;                                                                                                           
vist= vist+1;                                                                                                                           
run;                                                                                                                                    
Proc print data=visit4;                                                                                                                 
run;                                                                                                                                    
                                                                                                                                        
                                                                                                                                        
/* Collect datasets */
Libname user1 'E:\sas\source\sasfiles';

Proc Sort data=User1.Customers Out=Custsort;
By Custno;
Run;
Data Custtrans;
Set Custsort;
By Custno;
If First.Custno=1 then Trno=0;
Trno+1;
Run;
Proc Print data=Custtrans Label;
Label Trno='Transaction Number';
Run;


Report  the duplicates using logical variables...
Dataset name: Demo1.
Key variable : Patid.

Report duplicate data values.

Template for Reporting--->

_____________________________________________________
Dataset		Variable		Obsno		Value
_____________________________________________________


/* Collect datasets */
Libname user2 'E:\sas\data';

/* Prepare Template */

Data _null_;
File 'D:\Dup_demo_values.Rtf';
Put @12 'Duplicate data values';
put 40 *'_';
Put @5  'Dataset'   @15 'Variable'   @25 'Obsno'   @35       'Value';
put 40 *'_';
Run;
/*Upload data values */
Data _null_;
Set user2.demo1;
by patid;
file 'D:\Dup_demo_values.Rtf' Mod;
if first.patid=0   then put @5 'Demo1' @15 'Patid' @25 _N_ @35 Patid;
Run;



Report duplicate data values.

Data Mh;
input subid Visit $ Dose $;
Cards;
101	week1	05mg
102	week1	10mg
103	week1	15mg
104	week1	05mg
104	week1	05mg
105	week1	10mg
106	week1	15mg
101	week2	05mg
102	week2	10mg
102	week2	10mg
103	week2	15mg
104	week2	05mg
105	week2	10mg
106	week2	15mg
Run;

Key variable Subid Visit...
data _null_;
file 'D:\mh_dups.rtf';
put @5 'Dataset'   @15 'Variables'   @30 'Obsno'   @40       'Observation';
put ' ' ;

/* Upload duplicate observations' */
data _null_;
set Mh;
by visit subid; 
file 'D:\mh_dups.rtf' mod;
if first.visit=0 & first.subid=0 then put 
@5 'Mh' @15 'Visit Subid' @30 _N_ @40 subid visit dose;
Run;


Create sample datasets without duplicates:

/* Collect datasets */
Libname user2 'E:\sas\data';


Data dmclean2;
Set user2.demo1;
by patid;
if first.patid=1;
run;

Functions:
Functions require some arguments(values/variables), Run some operations and produce some results.
these are different types.
1. Datastep functions.
2. Arithmentic Functions/Mathematical Functions.
3. Aggregate Functions/Statistical Functions.
4. String Functions.
5. Date and Time Functions.

Note : Datastep functions should be used only in dataset block.
Arithmetic,aggregate,string & date and time functions can be used in datastep block or Procedure block(Print, SQL,Report).

1. Datastep functions:

exist
attrn
open
close functions.

i). Exist Function:
It returns values to report dataset existed or not.
It returns 1 or 0.
1--> Existed
0--> Not existed

Example: Exist('<dataset name>')

Location: 'E:\sas\source\sasfiles'
Dataset Ae, Lb.

/* Create Library using path */

libname clinic 'E:\sas\source\sasfiles';

data _null_;
file print;
if exist ('clinic.ae')=1 then put @10 
'Message : Dataset Exists';
else put @10 
'Message : Dataset does not Exist';
run;


data _null_;
file print;
if exist ('clinic.Lb')=1 then put @10 
'Message : Dataset Exists';
else put @10 
'Message : Dataset does not Exist';
run;
To report dataset contains number of variables and number of observations:

Open Function: opens the dataset.
Open ('<dataset name>')

Attrn Function: It requires open results and will count number of variables and number of observations.

Attrn (<open result>, 'nvar')
Attrn (<open result>,'nobs')

Close Function: It requires open results and will close the dataset.
Close (<open result>)

Data _null_;
file print;
if exist ('clinic.ae')=1 then do;
op=open('Clinic.ae');
var=attrn(op, 'nvar');
obs=attrn(op, 'nobs');
cs=Close(op);
Put @ 10 'Message : Dataset existed with ' var ' variables and ' obs 'Observations';
end;
else put @10 'Dataset does not exist';
Run;

Fileexist: 
It returns values to report PC files exist or not.
It returns 1 or 0.
1--> Existed
0--> Not existed
Fileexist('<file name>')
Example:
E:\SAS\SAS Programs.doc


data _null_;
file print ;
if Fileexist('E:\SAS\SAS Programs.doc') =1 then Put @10
'File existed';
else Put @10 'File not existed';
run;


2. Arithmentic Functions/Mathematical Functions:

int function:it returns integer values.
Integer>> Without decimals.

Round function: It returns roundup the values at nearest integer or nearest decimal place.

Ceil Function:Round up to highest integer.

Floor Function :Round up to lowest integer.

fact Function:It returns factorials.

Sqrt Function:It returns square root values.
Abs function: Absolute  --> It returns negative values into positive format.

Mod functions: It returns reminder.

Log / loge:It returns log e base values.

Log10 :It returns log10 base values.

data test;
input x;
cards;
23.456
12.324
88.675
-15.234
36.000
34.343
run;

data test1;
set test;
int=int (x);
R=round(x);
R1=round(x, .1);
R2=round(x, 0.01);
R3=round(x, 100);
C=ceil(x);
F=floor(x);
sq=sqrt(x);
ab=abs(x);
M=mod(x, 3);
log1=log(x);
log2=log10(x);
Run;

Proc print data=Test1;
run;




E:\SAS\source\xls\data1.xls
sheet : mathfunc

filename excel 'E:\SAS\source\xls\data1.xls';

proc import datafile=excel out=sample 
Dbms=excel replace;
Sheet='Mathfunc$';
Run;

data sample2 ;                                                                                                                          
set sample;                                                                                                                             
Mod2 = Mod( xvar,2);                                                                                                                    
Mod3 = Mod( xvar,3);                                                                                                                    
Mod5 = Mod( xvar,5);                                                                                                                    
run;                                                                                                                                    
Proc print data=sample2 double;                                                                                                         
run;                                                                                                                                    

Dif Function:
It returns difference between the values in column-wise.

Dif formula is current value - Previous value.

/* Source data*/
data salesdata;
input Month $ sale;
datalines;
Jan 	230
Feb 	290
Mar 	245
Apr	287
May	310
Jun	320
Run;

Task : to report sales difference monthly-wise.
Problem comes with first record because it does not have Previous values.

data salesdif;
set salesdata;
Sdif=Dif(sale);
Run;

Proc Print data=salesdif label;
label sdif='Sales difference';
Run;

***********************************************


Data Sbp_results;
input subid Time $ Test $ Units;
Cards;
101	10hr	SBP	260
101	11hr	SBP	230
101	12hr	SBP	232
101	13hr	SBP	178
101	14hr	SBP	146
102	10hr	SBP	250
102	11hr	SBP	220
102      12hr	SBP	212
102	13hr	SBP	148
102	14hr	SBP	149
run;

data sbp_change;
set sbp_results;
by subid;
if first.subid=1 then  vist=0;
vist+1;
if vist ne 1 then sbp_dif = dif(Units);
run;
Proc print data = sbp_change;
run;


Lag Function:
It returns previous values.
It can be used for numeric and character data.


data salesdif2;
set salesdata;
Sdif=sale - lag(sale);
Run;

Proc Print data=salesdif2 label;
label sdif='Sales difference';
Run;


Create new variable comparison between current value and previous value.....

Data salescomment;
set salesdata;
length comment $ 15;
If sale >lag(sale) then comment='Increasing mode';
else comment='Decreasing Mode';
run;
Proc Print data=salescomment;
Run;

Generate Cumulative values or running totals....

Task : Generate cumulative sales monthly-wise...

/* Cumulative sales monthly wise */
Data cumsales;
set salesdata;
Retain csale 0;
csale= csale + sale;
Run ;

Proc Print data= cumsales;
Run;

Generate Cumulative values or running totals Group-wise.....

Task : Generate cumulative sales product-wise...

Filename savin 'E:\sas\source\dlm\sales_months.txt';

Data Prdsales;
infile savin dsd;
input prdcode $ Month $ Sale ;
Run;


/* Run transformations for cumulative values group-wise */

data salescum;
set Prdsales;
by prdcode;
if first.prdcode=1 then csale=0;
csale+sale;
Run;


Proc Print data= salescum;
var prdcode month csale;
Run;


Task  : To report total sale product-wise


data salescum;
data salestotal;
set prdsales;
by prdcode;
if first.prdcode=1 then tsale=0;
tsale+sale;
if last.prdcode=1;
Run;


Proc Print data= salestotal label;
label tsale='Total Sales';
var prdcode  Tsale;
Run;


3 ). Aggregate Functions or Statistical Functions: 
Sum Function: Generates sums.
Mean Function: Generates mean values.
Median Function : Generates Median.
Var Function: Generates Variance.
Std Function: Generates Standard Deviation.
Max Function: Generates Maximum.
Min Function: Generates Minimum.

 these aggregate functions Run analytical operations across row-wise.

Data Salesdata;
Input Prdcode $ M1-M6 ;
Cards;
P101	230	340	345	210	560	230
P102	240	340	230	340	230	210
P103	210	210	250	210	210	220
P104	230	340	210	230	240	250
Run;

To report Sales Summary Product-wise.

Data Salesumz;
Set salesdata;
Tsale1=M1+m2+m3+m4+m5+m6;
Tsale2=Sum(m1,m2,m3,m4,m5,m6);
Avgsale=Mean(m1,m2,m3,m4,m5,m6);
varsale=var(m1,m2,m3,m4,m5,m6);
stdsale=std(m1,m2,m3,m4,m5,m6);
Maxsale=max(m1,m2,m3,m4,m5,m6);
Minsale=Min(m1,m2,m3,m4,m5,m6);
Drop m1-m6;
Run;

Proc Print data =salesumz;
Run;


Note : Difference between Function and operators to run analysis/calculation operations:

Operators: Include missing values in analytical operations, so, final result is missing.
But Functions default nature exclude missing values from the analysis operations.
So, functions are more efficient.
60+70+ . = .
Sum(60,70, . ) = 130

Tsales=sum (of M1-M6);
Maxsale=max(of M1-M6);

Customization: 

Data Salesumz;
Set salesdata;
Tsale1=sum(of M1-M6);
Avgsale=Round(mean(of M1-M6), 0.01);
Varsale=Round(var(of M1-M6), 0.1);
Stdsale=Round(std(of m1-m6));
Maxsale=max(of M1-M6);
Minsale=min(of M1-M6);

Drop m1-m6;
Run;


Proc Print data =salesumz;
Run;

Uses of summary Report:
1. Testing of data accuracy
2. Decision supporting
3. Data validation


String Functions:
Run String Operations.

Length Function: It returns the length of the statement.

Length(<variable>)

Number of characters in string including spaces(leading and embedded blanks).

Index: It returns position of 'Character or word'.

Index (<variable>, 'Char/word')

If character or word is repeated multiple times within the string, Then SAS returns position of the first occurrence.

If the character or word not available in string, Then SAS returns '0'.

Index c : It returns position of the character.
Index w : It returns position of the word.
index c (<variable>, 'Char')
index w (<variable>, 'word')

Find: Similar nature of Index.

Find (<variable>, 'Char/word')
* Backend features are different. 

find c (<variable>, 'Char')
find w (<variable>, 'word')

find c and find w functions are available from SAS v9.2 onwards.


Count Function: It returns the required char/word repeated number of times within the string.

Count (<variable>, 'Char/word')

Upcase Function: It returns the values in upper case.
Upcase (<variable>);

Lowcase/ lowercase : It returns the values in lower case.
lowercase (<variable>);      /* or */ 
lowcase (<variable>);

Propcase :
	It converts the initial letter of the word in uppercase within the string. each and every word letter in upper case. This feature is available from  fro SAS v9.1 onwards. 

Quote : It returns the values in double quotations.

quote (<variable>);

Reverse : It returns the values in reverse path. 
reverse (<variable>);

Compress : It remove characters from the strings. 

compress (<variable>, 'Char')
If we submit without second argument, then it removes  blanks from the statements.
Compress can be used for character as well as numeric values also. 

Translate :
	 It replaces the characters within the string 

Translate (<variable>,  'New Char' 'Old Char')


Tranwrd: It replaces the word within the statement.

Tranwrd ((<variable>, 'Old word' 'New word')

Scan function: It returns the required word from string.
Scan (<variable>, <position>, <dlm>)

* Position values are positive then SAS returns words from  left to right.

* If Position values are negative then SAS returns words from  right to left.

If we submit without Delimiter value then scan functions as recognize any special character as a delimiter.

* Scan function returns in string up to 32,767 characters within the word, but load in new variable upto 200 characters.


Substr: It returns part of the string.

Substr (<variable>, <start position>, <number of chars>)
* If we submit without last argument, Then SAS returns up to end.

/* Collect datasets */
Libname  User1 'E:\sas\source\sasfiles';

/* String Functions */

Data StrFunc;
set User1.dm (keep=fname);
Len=Length(fname);
Ind1=index(fname, 'a');
Ind2=index(fname, 'rao');
Fd1=Find(fname,'a');
Fd2=Find(fname, 'rao');
Cnt=count(fname, 'a');
Up=upcase(fname);
Lw=lowcase(fname);
Qt=quote(fname);
Rv=Reverse(fname);
Comp1=Compress(fname, 'a');
Comp2=compress(fname);
Tr1=Translate(fname, 'A', 'a');
Tr2=Tranwrd(fname, 'rao' , 'Rao');
Scn1=scan(fname, 2);
Scn2=scan(fname, -1);
Sub1=Substr(fname, 2, 8);
Sub2=Substr(fname, 2);
Run;
/* Reporting */
Proc Print data = StrFunc;
Run;




Concatenate || Functions :

Combine the characters.

Trim functions : Removes Leading or trailing blanks from the string.

Ltrim : Removes leading blanks from the left side of the string.
Rtrim: Removes trailing blanks from the right side of the string.

Ltrim & Rtrim functions are available from from SAS v9.2 onwards.

Data Mh;
input Arm $ Drug $ Dose $;
Cards;
Arm1 Asp 05mg
Arm2 Asp 10mg 
Arm1 Bsp 05mg
Arm2 Bsp 10mg
;

Create Treatment variable, combination of drug with dose.

Data MHFinal;
Set Mh;
Treatment=Trim(Drug)||'-'||Dose;
Drop Drug dose;
run;
/* Reporting */
Proc Print data=MHFinal;
Run;



Run Data Management Operations by string functions:

Data Trails;
Input Siteno $ Arm $ Dose $;
Cards;
S001	Arm1	Asp-05Mg
S001	Arm2	Asp-10mg
S002	Arm1	Asp-05mg
S002	Arm2	Asp-10Mg
;
Dose measurement must be in small 'mg'.
Data Trails_Tr;
Set Trails;
Dose=Translate(Dose, 'm', 'M');
run;

/* Reporting */
Proc Print data= Trails_Tr;
Run;

********************************

pid		drug		dose		adevents
P001		V1		0.05		headac&Eyedis
P002		V2		0.1		Fever&Eardis
P003		V3		0.15		Headac&Eardis


Create Treatment variable, combination of drug with dose & dose values must be kept in Brackets.
Create Ae & Adr variables from adevents.

/* Extraction */

Proc import datafile = 'E:\sas\source\xls\data.xls' Out=Mh_Ae 
Dbms=Excel Replace;
Sheet='Sheet3$';
Run;


/*Transformations */
Data Mhaetarget;
Set Mh_ae;
Treatment= Drug || '(' || compress(Dose) || ')' ;
Ae=Scan(adevents,1, '&');
Adr=Scan(adevents,2, '&');
Drop Drug Dose Adevents;
Run;

/*Report*/
Proc Print data=Mhaetarget;
Run;
**************************************

pid		fname				gender
101		konda ram mohan		m
102		kolla ram babu rao		m
103		chittu laxmi kanth		f


Task : Create surname name variables from fname. Convert gender values in uppercase and load in sex variable.



/* Extraction */

Proc import datafile = 'E:\sas\source\xls\data.xls' Out=Dmsource
Dbms=Excel Replace;
Sheet='Sheet1$';
Run;

/*Transformations */

Data Dmtarget;
Set dmsource;
Surname= Scan(fname,1);
Name= Substr (fname, index(fname, ' ' )+1 ) ;
sex=upcase(gender);	
run;

/*Report*/
Proc Print data=Dmtarget;
Run;

/* Convert names into uppercase */
/* Extraction */

Proc import datafile = 'E:\sas\source\xls\data.xls' Out=Dmsource
Dbms=Excel Replace;
Sheet='Sheet1$';
Run;

/*Transformations */

Data Dmtrget;
Set dmsource;
Surname = Upcase(substr(fname,1,1)) || Substr(fname,2,index(fname, ' ' )-2 ) ;
Name= Upcase(substr(fname,index(fname, ' ' )+1 , 1 )) || Substr(fname, (index(fname, ' ' )+2 ) );
Drop Fname;
Run;

/*Report*/
Proc Print data=Dmtrget;
Run;

******************************************


Compbl function:
			Convert multiple blanks/embedded blanks into a single blank.

data test;
x='Uma     Shankar';
y=compbl(x);
run;

Proc print data=test;
run;
********************************************
Notalpha function:
				It returns position of the non-alphabetics which is occurred first.

Notalnum function:
				It returns position of the non-alphabetics and non-numeric which is occurred first.

Note: Space/Blank is also a special character.

********************************************
data test;
input var $;
cards;
Abas-e4
Rta4e%
8dfd-56
er9u=ds
reun9
;

data test1;
set test;
N1=notalpha(var);
N2=notalnum(var);
run;

Proc print data=test1;
run;

****************************************
To report string contains number of words...

/*collect datasets*/
libname user1 'e:\sas\source\sasfiles';

data nowords; /* number of words */
set user1.dm(keep=fname);
words1=count(trim(fname), ' ' )+1;
words2 = countw(fname);
run;

proc print data=nowords;   /* number of words */
run;

***************************************

Countw Function:
It returns string contains number of words. This feature is available from SAS v9.2 onwards.
**********************************************

data chars; /* number of chars */
set user1.dm(keep=fname);
lastchar= substr(fname, length(fname));
lasttwochar=substr(fname, length(fname) -1);
Midchar=substr(fname, round(length(fname)/2) , 1) ;
run;


proc print data=chars; /* number of chars */
run;


**************************************

Return required character from the string.....


********************************************************
Assignment: create newname variable with first & last letters in uppercase, remaining all in lowercase.

********************************************************

Assignment : 


/* Collect datasets */
Libname  User1 'E:\sas\source\sasfiles';

/* String Functions */

Data StrFunc;
set User1.dm (keep=fname);
fcharcap= upcase(substr(fname, 1,1));
lcharcap= upcase(substr(fname, length(fname),1));

middlechar= substr(fname, 2, length(fname)-2) ;
final_result=  upcase(substr(fname, 1,1)) ||  substr(fname, 2, length(fname)-2) || 	upcase(substr(fname, length(fname),1));
run;
/* Reporting */
Proc Print data = StrFunc;
Run;

********************************************************

Run data cleaning /data validation/ Edit and Checks by string functions.....




/* Source data */

data dm;
input Studyid $ Siteno $ Subid $ Age Gender $ Race $;
cards;
X-001	ST-001	U001	25	F	As
X-001	ST-001              U002	56	M	As
X-001	ST-002	U003	26	m	As
X-001	ST-002	U004	29	F	As
X-001	ST-003	U005	18	f	As
X-001	ST-003	U006	20	F	As
;

SOP for Data validation/Data Definition Document

Rules are included in SDTM IG(Implementation Guide).

studyid must be in 5 digits and must contain hyphen.
Siteno must be in 6 digits and start with ST.
Subid must be in 4 digits and start with capital of 'U'.
Age must be greater than/equal to 20. 
Gender must be in Capital of M/F only.


***********************************************

Template /Markup

Dataset	Variable	Obsno	Value	Datacheck
xxxx		xxxx		xxxxx	xxxxxx	xxxxxxxx

***********************************************************


Clinical domain significance

DCF -- Data clarification Form
Validation ---> Checks on datasets, like, Number of variables, length of the variable, labels, Formats of the datasets.

Data validation ----> Checks on Observations/values present in a dataset for their quality as per the FDA norms/ CDISC/SDTM Rules.

***********************************************************
/* Source data */

data dm;
input Studyid $ Siteno $ Subid $ Age Gender $ Race $;
cards;
X-001	ST-001	U001	25	F	As
X-001	ST-001            U002	56	M	As
X-001	ST-002	U003	26	m	As
X-001	ST-002	U004	29	F	As
X-001	ST-003	U005	18	f	As
X-001	ST-003	U006	20	F	As
;

/* Prepare Template*/

data _null_;
file 'D:\Dm_Dcf.txt';
put @5 'Dataset' @15 'Variable' @30 'Obsno' @40 'Value' @50 'DataCheck';
Put ' ';
run;

/* Upload Invalid values*/
data _null_;
set Dm(keep=studyid);
file 'D:\Dm_Dcf.txt' mod;
if length (studyid) ne 5 then
put @5 'Dm' @15 'Study id' @30 _N_ @40 studyid @50 'Studyid must be in 5 digits';
run;

data _null_;
set Dm(keep=studyid);
file 'D:\Dm_Dcf.txt' mod;
If index(studyid, '-')=0 then 
put @5 'Dm' @15 'Study id' @30 _N_ @40 studyid @50 'Studyid must contain hyphen';
run;

data _null_;
set Dm(keep=siteno);
file 'D:\Dm_Dcf.txt' mod;
if length (siteno) ne 6 then
put @5 'Dm' @15 'Siteno' @30 _N_ @40 Siteno @50 'Siteno must be in 6 digits';
run;



data _null_;
set Dm(keep=siteno);
file 'D:\Dm_Dcf.txt' mod;
if substr(siteno,1,2) ne 'ST' then 
put @5 'Dm' @15 'Siteno' @30 _N_ @40 Siteno @50 'Siteno must contain ST';
run;


data _null_;
set Dm(keep=subid);
file 'D:\Dm_Dcf.txt' mod;
if length (subid) ne 4 then
put @5 'Dm' @15 'Subid' @30 _N_ @40 Subid @50 'Subid must be in 4 digits';
run;


data _null_;
set Dm(keep=subid);
file 'D:\Dm_Dcf.txt' mod;
if substr(subid,1,1) ne 'U' then 
put @5 'Dm' @15 'Subid' @30 _N_ @40 Subid @50 'Subid must contain U';
run;


data _null_;
set Dm(keep=age);
file 'D:\Dm_Dcf.txt' mod;
if age <=19 then 
put @5 'Dm' @15 'Age' @30 _N_ @40 age @50 'Age must be below 20 ';
run;

data _null_;
set Dm(keep=gender);
file 'D:\Dm_Dcf.txt' mod;
if gender ne 'M' and gender ne 'F' then 
put @5 'Dm' @15 'Gender' @30 _N_ @40 gender @50 'Gender must be M/F ';
run;
************************************************


Upload to Rtf File.....
/* Source data */
data dm;
input Studyid $ Siteno $ Subid $ Age Gender $ Race $;
cards;
X-001	ST-001	U001	25	F	As
X-001	ST-001	U002	56	M	As
X-001	ST-002	u003	26	m	As
X-001  ST-002	U04	29	F	As
X-001	ST-003	U005	18	f	As
X-001	ST-003	U006	20	F	As
;

/* Prepare Template*/

data _null_;
file 'D:\Dm_Dcf.rtf';
put @5 'Dataset' @15 'Variable' @30 'Obsno' @40 'Value' @50 'DataCheck';
Put ' ';
run;

/* Upload Invalid values*/
data _null_;
set Dm(keep=studyid);
file 'D:\Dm_Dcf.rtf' mod;
if length (studyid) ne 5 then
put @5 'Dm' @15 'Study id' @30 _N_ @40 studyid @50 'Studyid must be in 5 digits';
run;

data _null_;
set Dm(keep=studyid);
file 'D:\Dm_Dcf.rtf' mod;
If index(studyid, '-')=0 then 
put @5 'Dm' @15 'Study id' @30 _N_ @40 studyid @50 'Studyid must contain hyphen';
run;

data _null_;
set Dm(keep=siteno);
file 'D:\Dm_Dcf.rtf' mod;
if length (siteno) ne 6 then
put @5 'Dm' @15 'Siteno' @30 _N_ @40 Siteno @50 'Siteno must be in 6 digits';
run;
data _null_;
set Dm(keep=siteno);
file 'D:\Dm_Dcf.rtf' mod;
if substr(siteno,1,2) ne 'ST' then 
put @5 'Dm' @15 'Siteno' @30 _N_ @40 Siteno @50 'Siteno must contain ST';
run;
data _null_;
set Dm(keep=subid);
file 'D:\Dm_Dcf.rtf' mod;
if length (subid) ne 4 then
put @5 'Dm' @15 'Subid' @30 _N_ @40 Subid @50 'Subid must be in 4 digits';
run;
data _null_;
set Dm(keep=subid);
file 'D:\Dm_Dcf.rtf' mod;
if substr(subid,1,1) ne 'U' then 
put @5 'Dm' @15 'Subid' @30 _N_ @40 Subid @50 'Subid must contain U';
run;
data _null_;
set Dm(keep=age);
file 'D:\Dm_Dcf.rtf' mod;
if age <=19 then 
put @5 'Dm' @15 'Age' @30 _N_ @40 age @50 'Age must be below 20 ';
run;
data _null_;
set Dm(keep=gender);
file 'D:\Dm_Dcf.rtf' mod;
if gender ne 'M' and gender ne 'F' then 
put @5 'Dm' @15 'Gender' @30 _N_ @40 gender @50 'Gender must be M/F ';
run;


**********************************************************

case2:


data emp;
input eid  & $ 6. name   & $ 28. age;
cards;
Emp101	bosani sham shivan raja	  30
Emp102	pulagam veera bhadra prasad	  29
Emp103	Punati leela kishore jana	  32
Emp104	veera venkata surendra boyapati  	27
Emp105	veera venkata surya narayana  	30
run;

/* String Functions */

Data StrFunc;
set emp (keep=name);

fchar= substr ( name, 1,1);

fcharcap= upcase(substr(name, 1,1));
lcharcap= upcase(substr(name, length(name),1));

middlechar= substr(name, 2, length(name)-2) ;
final_result=  upcase(substr(name, 1,1)) ||  substr(name, 2, length(name)-2) || 	upcase(substr(name, length(name),1));
run;

/* Reporting */
Proc Print data = StrFunc heading=horizontal;
run;

**********************************************************


Date & Time Functions:

Day :
		It returns the date values(1-31) from the date.

Month : 
		It returns month value(1-12) from the date.

Year :
		It returns year value from the date.

Qtr :
		It returns quarter(1-4.

Weekday :
		It returns week days(1-7).

Hour :
		It returns hours in 24-hr Format from Time. 

Minute :
		It returns minutes  from Time.


Second :
		It returns Seconds from Time.

Datepart  :
		It returns date values from date&time. 

Timepart  :
		It returns time values from date&time.

Date() :
		It returns the date values from the OS. 

Today() :
		It returns the date values from the OS.



time() :
		It returns the time values from the OS.



*********************************************
/* Source Data */

Data Dtimes;
input date : date9. Time : time8. 
Dtime : datetime18. ;
format date date9. Time time8. 
Dtime datetime18. ;
cards;
14Jan2005		12:34:23		19May2006:12:23
15Oct2006		13:42:56		20oct2009:19:20
run;

/* call the date and time functions */
Data dtimefunc;
set dtimes;
Dy=day(date);
Mn=month(date);
year=year(date);
Qtr=qtr(date);
Wk=weekday(date);
Hr=hour(time);
mnt=minute(time);
scn=second(time);
Dat=datepart(dtime);
Tim=timepart(dtime);
format dat date9. Tim time5.;
run;

Proc print data=dtimefunc;
run;

*******************************************
Note: Functions can be used in dataset block as well as procedure block.

*****************************************
Run the filters using date functions......

proc print data=sashelp.air;
where year(date)=1958;
run;

proc print data=sashelp.air;
where year(date)=1958 & Qtr(date)=3;
run;

proc print data=sashelp.air;
where year(date)=1958 & month(date)>=2 and month(date)<=6;
run;

proc print data=sashelp.air;
where year(date) in (1955, 1957,1958)  & month(date)=5 ;
run;

*************************************************

Collect date and time values from OS ....

Data OS;
osdate1=date();
osdate2=today();
ostime=time();
format osdate1 osdate2 date9. 
ostime time8.;
run;

proc print data=OS;
run;

***********************************

Upload date & Time values into third party files.


data _null_;
file 'd:\demo.rtf' mod;
d=today();
t=time();
put @5 'Date : ' d ddmmyyd10. put @55 'Time: ' t time8.;
run;

***********************************

Mdy function :
			Assign date values. 
syntax:
MDY(month, day,year)

Hms function :
			Assign time values. 
syntax:
HMS(hours, minutes, seconds)

DHMS Function: 
			Assigns datetime values.
syntax:
DHMS(date, hours, minutes, seconds)

data test;
date1='14jan2005'd;
date2=mdy(01,14,2005);
time1='14:23:45't;
time2=hms(14,23,45);
datetime=dhms(date2, 12,30,25) ;
format 	date1 date2 date9. 
		time1 time2 time8.;
run;

proc print data=test;
run;

***************************************

Intck functions:
			It returns difference between the date values/ date&time values in different intervals.
			These intervals are day, month, year,week,Qtr....
syntax:
intck ('<interval>', <start date>,<end date>);

data dm;
input subid DoB : date9. Refdate : date9.;
format DoB date9. Refdate date9.;
cards;
101	16may1973	20oct2006
102	20jun1972	21oct2006
103	21dec1985  	22oct2006
104	21dec2005  	02jan2006
;


Task: Calculate age value difference in years, dob to reference date(treatment starting date).

data dm;
set dm;
Age= intck('year', dob, refdate, 'c') || ' ' || 'Years';
run;

proc print data=dm;
run;
*************************

syntax:
intck ('<interval>', <start date>,<end date>  'c'/'d' );

c=continuous
d=discrete

this feature is available only on SAS v9.2 onwards.

***********************************************************


Intnx function:
calculate date value using calendar procedure.

syntax: 
intnx ('interval', <start date> , <end date>);

data loans;
input loanno $ loantype $ issuedate : date9.;
format issuedate  date9.;
cards;
H001	House	23jan2009
H002   House	26oct2009
H003	House	21may2010
H004	House	22jul2011
;

Task: calculate loan closing date with loan running 10 years.
data loansinformation;
set loans;
closedate = intnx('year',  issuedate, 10);
format closedate date9.;
proc print data= loansinformation;
run;

**************************************************


Adding process:
		Adding data one by one.
These are three types.
1. Appending 
2. Concatenation
3. Interliving

1. Appending: Append the data from one dataset to another existed dataset. 
Appending process can be done within the two datasets. In two datasets, variable names and data types must be same.

syntax: 
Proc append base=<Master> data=<Child dataset> <options>;
run;
*************************
Data Dm1;
input Siteno $ Arm $ Subid Age Gender $;
cards;
S001	Arm1	101	23	M
S001	Arm1	102	25	F
S001	Arm1	103	34	M
;

data Dm2; 
input Siteno $ Arm $ Subid Age Gender $;
cards;
S002	Arm2	201	31	F
S002	Arm2	202	54	F
S002	Arm2	203	51	M
;

Proc append base=Dm1 data=dm2;
run;
***************************************************
Problems asked in Interview:

1. Child dataset contains less variables compared to master dataset.

In these cases, SAS generates missing values for non equal/non matching variables and run the appending process.


data Dm3; 
input Siteno $ Arm $ Subid Age;
cards; 
S003	Arm3	301	50
S003	Arm3	302	41
S003	Arm3	303	37
;

Proc append base=Dm1 data=dm3;
run;


2. Child dataset contains more variables compared to master dataset.
		In these cases we have to use force option. 

Force option: Forces the append when variables are different. Force option temporarily drops non equal/non matching variables from the appending process.

Nowarn option: Suppresses the warning message when used with the FORCE option.

data Dm4; 
input Siteno $ Arm $ Subid Age Gender $ Race $ Color $;
cards;
S004	Arm4	401	29	M	As	Black
S004	Arm4	402	21	M	Af	Black
S004	Arm4	403	26	F	As	White
;

Proc append base=Dm1 data=dm4;
run;

Proc append base=Dm2 data=dm4 (drop race color);
run;



3. Rename, Reformat the data for append:

variable names in the child dataset are different from base/master dataset.
variable values in the child dataset are different from base/master dataset.

Data Dm5;
input Siteno $ Arm $ Pid Age Gender $;
cards; 
S005	Arm5	501	41	1
S005	Arm5	502	40	2
S005	Arm5	503	46	2
;

/* Transformations */

data dm5sample;
set dm5;
if gender=1 then g='M';
else G='F';
drop gender;
rename g=Gender pid=Subid;
run;

Proc append base=Dm1 data=dm5sample;
run;


4. Submit append procedure without data option:
			In these cases, SAS default collects the data from recently existed dataset and runs the appending process.
Note : In SAS, If we submit any procedure without data option, then the procedure default interacts with recently existed dataset.

Data emp1;	
input Eid;
cards;
101
102
103
104
;
Data emp2;
input Eid;
cards;
105
106
107
108
;

Proc append base=emp1 ;
run;

5. SAS creates new dataset whenever the master dataset is not existed.

Data dm1;
input subid;
cards;
101
102
103
104
105
106
run;

/* Append */
Proc append base=demo data=dm1;
run;
************************************************************************************
Concatenation:
 Read the data from multiple datasets and load in one new dataset one by one in sequential order.
		It can be done across 14,000 datasets. 
Data Emp1;
input Eid Des $ Salary ;
cards;
101	Tester	2400
102	Analyst 5400
103	Progmer 2000
;
Data Emp2;
input Eid Des $ Salary ;
cards;
201     progmer	3000
202	Analyst	4500
203	Tester 	            4400
;
Data Emp3;
input Eid Des $ Salary ;
cards;
301	Analyst	6400
302	Tester    	3400
303	Progmer	2800
;

Data Employess;
set Emp1 Emp2 Emp3;
Run;
************************************

Interliving:
		Read the data from multiple datasets and load in one new dataset one by one in sorting order.

Proc sort data=emp1 out=emp11;
by descending salary;
run;
Proc sort data=emp2 out=emp22;
by descending salary;
run;
Proc sort data=emp3 out=emp33;
by descending salary;
run;

/* Interliving */
Data employeesnew;
set Emp11 Emp22 Emp33;
by descending salary;
Run;
Update Transformation: 
		Replace the values in the master dataset by the child dataset using relation.

Syntax:

Data <Master>/<New Dataset>;
Update <Master> <Child>;
by <variable>;
Run;

Application:

Data Emp_details; 
input Eid Des $ Salary ;
cards;
101	 Progmer	3000
102	 Analyst	4500
103	 Tester 		4400
104    Progmer		3500
105	 Analyst	4800
106	 Tester 		4400
107	 Analyst	4500
108	 Tester 		4400
109   Progmer		3500
;

Data Emp_newSal;
input Eid Salary ;
cards;
101 	6900
105	9000
108	8500
;

Data Emp_details;
Update Emp_details Emp_newSal;
By Eid;
run;

Proc print data=Emp_details;
run;


** Interview purpose**
1). Missing values are existed in child dataset...
		In Update processing time, corresponding values in master dataset will not be replaced. This process is controlled by the updatemode option.
			
Updatemode option:		
		Updatemode=missingcheck(default)/nomissingcheck;

Missingcheck-- Will not be replaced.
Nomissingcheck-- Will be replaced.


Data Emp_newSal;
input Eid Salary ;
cards;
101 	6900
105	9000
108	.
;

/* Will not be replaced  */

Data Emp_details1;
Update Emp_details Emp_newSal;
By Eid;
run;

Proc print data=Emp_details1;
run;



**************************


/* Will be replaced  */

Data Emp_details2;
Update Emp_details Emp_newSal
updatemode=nomissingcheck;
By Eid;
run;

Proc print data=Emp_details2;
run;

**********************************************

2).  If duplicate data values are existed in child datasets, then corresponding value in master dataset will be replaced multiple times.

Note : We can create new variables in update processing time.  

Data Emp_details; 
input Eid Des $ Salary ;
cards;
101	 Progmer	3000
102	 Analyst	4500
103	 Tester 		4400
104   Progmer		3500
105	 Analyst	4800
106	 Tester 		4400
107	 Analyst	4500
108	 Tester 	 	4400
109   Progmer		3500
;

Data Emp_newSal;
input Eid Hike : Percent5. ;
format hike percent5.;
cards;
101 	50%
105	40%
108	30%
;

Data Emp_details;
Update Emp_details Emp_newSal;
By Eid;
newsalary=salary+ (salary * hike);
run;

Proc print data=Emp_details;
run;


Update process can be called Slowly Changing the Dimensions(SCD).

SCD are three types...

SCD1 : To maintain only current value.

SCD2 : To maintain only current value with historical data.

SCD3 : To maintain only current value with previous value as a single record.




Modify Transformations: Replace the values, append and delete the data.

Replace the values in Master dataset with Expression :
		This can be done using set or modify statements.

Data Emp1;
input eid $ salary;
cards;
E101	2300
E102	3400
E103	4300
;

Data Emp2;
input eid $ salary;
cards;
E101	2300
E102	3400
E103	4300
;

/* Using set statement */
Data Emp1;
Set Emp1;
Salary=salary+1000;
Run;


/* Using Modify statement */
Data Emp2;
Modify Emp2;
Salary=salary+1000;
Run;

Modify statement: Modify statement can be used in dataset block as well as datasets procedure only.


Note: 
Set Statement read the data record by record. But, Modify statement copy the data.
		So, Modify statement takes less processing time when compared to set statement.


When will we use set statement?
		Run the modifications and store the data in new variables and new dataset, then set statement is more efficient compared to modify statement.

		Why because, modify statement does not allow additional copies(new variables and new datasets).


/* Using set statement */
Data Emp3;
Set Emp1;
newSalary=salary+1000;
Run;

/* Using Modify statement */
Data Emp4;
Modify Emp2;		/* Fails */
newSalary=salary+1000;
Run;


Another advantage of Modify statement:
		Modify statement replace the values in master dataset by the child dataset using relation and expression.


Data <Master>;
Modify <Master> <Child dataset>;
By <variable>;			/* Relation */
<Expression>;
run;

/* Master dataset */
data Emp_details;
input Eid $ Des $ Salary;
cards;
E101	Tester	2300
E102	Progmer	3400
E103	Analyst	2900
E104	Manager	3200
E105	Analyst	2800
E106	Progmer	3100
;

/* Child dataset */
Data Emp_Hic;
Input Eid Hic : percent5.;
Format Hic percent5.;
Cards;
E101	50%
E103	30%
E106	20%
;

/* Modify Operations*/
data Emp_details;
modify Emp_details Emp_hic;
by Eid;
salary =salary + (salary*hic);
run;

proc print ;
run;


Delete the data from Table..

data Emp_details;-
modify Emp_details;
if salary <= 3500 then remove;
run;


/* or */ 

data Emp_details;
set Emp_details;
if salary <= 3500 then delete;
run;

/* or */ 

data Emp_details;
set Emp_details;
where salary > 3500 ;
run;


Merge Statement:
			Combine the datasets using relations.

Types of Merges:

1. One to One merge without using relation.
2. One to One merge using relation.
3. One to Many merge using relation.
4. Many to One merge using relation.
5. Many to Many merge using relation.


1. One to One Merge without using relation.

Data Customers;
input Custno $ Custname $ Phoneno ; 
Cards;
C101	Kumar	9000845680
C102	Shankar	9849254784
C103	Pawan	9440024569
;

Data Branchs;
Input Bchcode $ Location $;
Cards;
B101	Hyderabad
B102	Madras
B103	Delhi
;

Data Products;
Input Prdcode $ Product $;
Cards;
P101	Tv
P102	Ac
P103	Mobile
;

/* Merge Operations */
Data Customer_trans1;
Merge Customers	Branchs	Products; /* Side by side */
Run;

Proc Print;
Run;

/* or */

Data Customer_trans2;
Set Customers	Branchs	Products;  /* One by one */
Run;

Proc Print;
Run;

/* or */

Data Customer_trans3;
Set Customers;
Set	Branchs;
Set	Products;  /* Side by side */
Run;

Proc Print;
Run;

**********************************

Dataset contains number of records...

data test1 ;
input eid;
cards;
101
102
103
104
;

Data test2;
input Des $;
Cards;
Tester
Analyst
;

Data test3;
merge test1 test2;
run;
proc print;
run;


Data test4;
set test1;
set test2;
run;
proc print;
run;


In above application, Test3 contains 4 records, Test4 dataset contains 2 records.

2. One to One Merge using relation(Using matching variable).

Data Products;
input Prdcode $ Prdtyp $ Model $ ;
cards;
P101		Tv 		3D
P102		Mobile  	Asha
P103		Laptop 	Vestro
P104		Tv 		LED
;

Data Prices;
Input Prdcode $ Prices;
cards;
P101		89000		
P102		8000
P103		45000			
P104		55000
;

Data Product_Prices;
Merge Products Prices;
by Prdcode;
run;
proc print;
run;

Note: One to one merge, we can submit with or without By statement, why because data is available in sorting order.

Data Product_Prices;
Merge Products Prices;
run;

proc print;
run;

3. One to Many Merge using relation

Data Customers;
Input Custno $ Name $ Phoneno;
Cards;
C001	Kumar	9889551254
C002	Pavan	9000745898
C003	Lavan	9985655856
;

Data Cust_trans;
Input Custno $ Month Quantity;
Cards;
C001	1	20
C002	1	30
C003	1	23
C001	2	45
C002	2	80
C003	2	78
C001	3	23
C002	3	20
C003	3	23
;


Task: To report Customer details as well as their transaction details.

Proc sort data = Cust_trans out=custsort;
by custno;
run;

Data Cust_details_trans;
Merge Customers Custsort; 
by custno;
run;

Proc Print;
Run;
 
4. Many to One Merge using relation


/* Many to One */
Data Cust_details_trans;
Merge Custsort Customers; 
by custno;
run;

Proc Print;
Run;



5. Many to Many Merge using relation

Data Mh;
Input Subjid $ Visit $	Dose $;
Cards;
U001	Week1	Asp-05mg
U002	Week1	Asp-10mg
U003	Week1	Asp-15mg
U001	Week2	Asp-05mg
U002	Week2	Asp-10mg
U003	Week2	Placebo
U001	Week3	Asp-05mg
U002	Week3	Placebo
U003	Week3	Asp-15mg
;

Data Ae;
Input Subjid $ Visit $	Aeterm $;
Cards;
U001	Week1	Headac
U002	Week1	Rashs
U003	Week1	Fever
U001	Week2	Vomiting
U002	Week2	Skinprb
U003	Week2	Rashs
U001	Week3	Headac
U002	Week3	cold
U003	Week3	Fever
;

Task : To report each subject Medical History and their adverse events information visit-wise.

Note : Many to Many Merge can be controlled using more than one key vatriable.
Proc sort data =mh out=Mhsort;
by subjid visit;
run;
Proc sort data=ae out=Aesort;
by subjid visit;
run;

Data Mh_Ae;
Merge Mhsort Aesort;
by subjid visit;
run;

Proc Print Data=Mh_Ae;
Run;

Note: One to One, One to many, many to one and many to many merge, these relations are formed between observations(records), and not between datasets.

Trace out/ Report Matching and non matching data: 

In these cases, we have to use Lookup Process.

		In Lookup process, we should create one tracking variable using IN Operator in Base dataset.
		Tracking variable(created by the user, and automatically deleted by the SAS system) is also one of the temporary variable.

Tracking variable returns 1 or zero.
Default is 1.
1--- Controls matching data
0--- Controls non matching data

Lookup Process can be used in update, modify and merge applications.

One dataset contains matching data and non matching data. and second dataset contains only matching data.

Data Product_details;
input Prdcode $ Prdtyp $ Model $ ;
cards;
P101		Tv 		3D
P102		Mobile 	Asha
P103		Tv 		LED
P104		Laptop 	Ventro
P105		Mobile 	Luma
P106		Laptop 	Vesto
;

data Product_offers;
infile cards dsd;
input prdcode $ Offer $ : 16.;
cards;
P101,Dvd Player
P103,Gift Coupon
P105,10% Discount
;

Task: To report list of the products and their product offer details(matching data). 

data product_details_offer;
merge 	product_details
		Product_offers(in=var);
by prdcode;
if var=1;
run;

proc print;
run;

Task: To report list of the product which do not have any offers(non matching data).

data product_details_nonmatching;
merge 	product_details
		Product_offers(in=var);
by prdcode;
if var=0;
offer='No Offers right now';
run;

proc print;
run;



Two datasets contain matching data and non matching data. 

Data Ae;
input Subid Aeterm $;
Cards;
101 Headac
109	Fever
145	Skinprb
167	Cold
234	Rash
324	Headac
;

Data Sae; 
input Subid Saeterm $;
Cards;
098	Eardis
101	Eyedis
145	Eyedis
167	Liverdis
324	Eyedis
389	Eardis
;

Task: To report list of the subjects, whoever reported adverse events as well as severe Adverse events(Matching data).

Data Ae_Sae_Matching;
Merge Ae(in=a ) Sae(in=b);
by Subjid;
If a=1 & b=1;
Run;
Proc Print;
Run;


Task: To report list of the subjects, whoever reported either adverse events or severe Adverse events(non matching data).


/* Non Matching data */
Data Ae_Sae_nonmatching;
Merge Ae(in=a ) Sae(in=b);
by Subjid;
If a=0 or  b=0;
Run;
Proc Print;
Run;

Task: To report non matching data from required datasets..

Note** :  Tracking variable works in opposite direction.

/* from ae */
Data Ae_Sae_nonmatching;
Merge Ae Sae(in=a);
by Subjid;
If a=0 ;
Run;
Proc Print;
Run;


/* from sae */
Data Ae_Sae_nonmatching;
Merge Ae(in=a) Sae;
by Subjid;
If a=0 ;
Run;
Proc Print;
Run;

Registration keywords:
Note : SET, UPDATE, RETAIN, and merge keywords are reserved for SAS(Any SAS keyword can be taken as a dataset name or variable name except set and merge keywords).

Errors :
		Errors are two types.
1. Compile Time errors
2. Execution Errors

1. Compile Time errors
 Occurred in compile time. These are 2 types.
a.  Syntax errors
b. Semantic errors

a.  Syntax errors

-->Forget semicolon at the end of the SAS Statement.
--> Miss-spelled keywords/ to use wrong keywords.
--> Unfortunately dataset block code using procedure block or procedure block code used in dataset block.

b. Semantic errors:
 Passing wrong number of arguments to functions.

2. Execution Errors:
  Occurred in execution time. These are 3 types.

a. Data error
b. Logic error
c. Propagation error

a. Data error : To pass miss-match data type and to pass wrong number of variables to read the data.

b. Logic error : Passing wrong condition.
c. Propagation error: Run the analysis or calculations by the arithmetic operators unfortunately, within the data, values are missing, then Final result is missing.

example:   60+ . +90  ;
		Sum(60 +. +90) =150;


Create Null dataset : 
			Null dataset means dataset is existed with variables and without observations.

Data Employee;
Length Eid 4 Des $ 10 Salary 7;
Delete;
Run;

***********************************************************
Length of the character variable is 1 to 32,767.
Length of the numeric variable is 3 to 8.
***********************************************************

SQL (Structured Query Language):

SQL is one of the internal component in Base SAS, is advanced programming.

Using SQL, we can run data management operations, data analysis operations and reporting processes for databases.

SQL Features:
--> Create Table
--> Insert the data
--> Update the data
--> Modify the table
--> Delete the data
--> Drop the table
--> Create View
--> Drop the views
--> Assign Constraints
--> Drop the constraints
--> Create Index
--> Drop the Index
**********************************************************

SQL applications are developed by the sql procedures.

syntax:
proc sql;
<sql statements>;
Quit;

SQL Concepts:

1. DDL(Data Definition language)
2. DML (Data Manipulation Language)
3. DCL(Data Control Language)
4. Query Language

1. DDL(Data Definition language)
		Create and drop tables and views.
2. DML (Data Manipulation Language)
		Update data, modify the table, insert the data and delete the data.
 
3. DCL(Data Control Language)
		Grant permissions.
4. Query Language
		Retrieve the data from the table.


Create a table and insert the data..

Create statement:
	Create a table and view.
Insert into Statement:
		Insert the data into existed table using values clause or set clause.

Values clause : Insert the values using position of the variables.
set clause: Insert the values using name of the variables.
select statement: It is a query statement and retrieve the data from tables.


Proc sql;
create table Employee (Eid numeric, Desig character(10), Salary numeric);
quit;
/* values clause */

Proc sql;
insert into employee 
values (101, 'Tester', 2000)
values(102, 'Progmer', 1500)
values(103, 'Analyst', 2500)
values(104, 'Manager', 4000);
quit;

/* set clause */

Proc sql;
insert into employee 
set eid=201, Desig='Tester', Salary=2100;
quit;
/*  Reporting  */ 
Proc sql;
select * from employee ;
quit;

Insert Nonstandard Data:

proc sql;
create table MH (subjid num, sdate num, stime num, edtime num);
insert into mh
values (101, '12jan2003'd, '14:23't, '15jan2003:10:23'dt)
values (102, '17Feb2003'd, '15:23't, '19mar2003:19:56'dt);
quit;

/* reporting*/
proc sql;
select subjid, sdate format=ddmmyyd10., stime format=time5., edtime format = datetime18. from MH ;
Quit;

/* or  */

/* Assign Permanent labels and formats */


proc sql;
create table MHist2 (subjid  num  'Subject Id', sdate  num format=ddmmyyd10. 'Treatment starting date', stime num 
format=time5. 'Treatment starting time', 
edtime  num  format = datetime18. 'Treatment Ending date' );
insert into mhist2
values (101, '12jan2003'd, '14:23't, '15jan2003:10:23'dt)
values (102, '17Feb2003'd, '15:23't, '19mar2003:19:56'dt);
quit;

/* reporting*/
proc sql;
select * from MHist2 ;
Quit;

Read part of the variables

proc sql;
select name, age, sex from sashelp.class;
quit;

Assign the labels....

proc Sql;
select 	name 'Subject Name',
		Age 'Subject Age',
		Sex 'Subject Gender' from sashelp.class;
quit;


Create sample datasets:

proc Sql;
create table demo as 
select 	name 'Subject Name',
		Age 'Subject Age',
		Sex 'Subject Gender' from sashelp.class;
quit;


Note:
for creating sample datasets, dataset block is more efficient when compared to SQL procedure because, sql block transfers the data from input buffer to report buffer then to input buffer for creating dataset block, which is a time taking process.
But the dataset block sets the data in one single input buffer itself, which is efficient.

**************************************

ORDER BY clause:
		Report the data in sorting order using order by clause. 

The ORDER BY clause sorts the results of a query expression according to the order specified in that query. 
When this clause is used, the default ordering sequence is ascending, from the lowest value to the highest. 

ASC
orders the data in ascending order. This is the default order. If neither ASC nor DESC is specified, the data is ordered in ascending order.

DESC
orders the data in descending order.

Proc SQL;
Select * from sashelp.class order by age;
quit;

Proc SQL;
Select * from sashelp.class order by age DESC;
quit;

Proc SQL;
Select * from sashelp.class order by sex  asc, age DESC;
quit;


Where Clause:
		Run the filters. Read part of the data conditional basis.


Comparison Operators

Symbols 	Letters	Meaning
>	GT	Greater Than
<	LT	Less Than
=	EQ	Equal to
^=	NE	Not Equal to
~=	NE	Not Equal to
>=	GE	Greater Than or Equal to
<=	LE 	Less Than or Equal to


Logical Operators

                                                                                                                                        
Symbols 	Letters
&	And
|	OR
!	OR
 	Between
 	Not
 	In
 	Not in
 	Like
 	Contain


Proc SQL;
select * from sashelp.class where age>=14;
quit;

Proc SQL;
select * from sashelp.class where sex='M';
quit;

Proc SQL;
select * from sashelp.class where sex='M'  & age >=14;
quit;
Proc SQL;
select * from sashelp.class where  age>=12 and  age<=15  ;
quit;


Proc SQL;
select * from sashelp.class where age  between 12 and 15;
quit;

Proc SQL;
select * from sashelp.class where age in(12,15);
quit;

Proc SQL;
select * from sashelp.class where age=12 or age=15;
quit;

Task: To report part of the data in sorting order....

Proc SQL;
select name,sex, age from sashelp.class where  sex='M' order by age desc ;
quit;


Run the expressions for creating new variables....

Expressions are made by using arithmetic operators( + - *  / ) .

Create numeric variable for reporting....


/* Source data */
Data Emp_salaries;
input Eid $ Salary Sale;
Cards;
E101	3000	540
E102	3200	420
E103	4500	180
E104	7000	280
E105	5300	340
E106	5000	670
E107	4300	350
E108	4000	150
;

Proc sql;
Select *, salary+100 as newsalary from emp_salaries;
quit;

Case when then else end block :
			Run the operation/statement conditional basis.

Case when <condition> then <statements>;
else <statements>  end;


Case when <condition> then <statements>;
	when <condition> then <statements>;
	when <condition> then <statements>;
	.....................
else <statements>  end;



Run the expression Conditional Base........

Condition	Expression
Sale >=500	Salary+2000
Sale<500	Salary+1000




proc sql;
select *, salary+case when sale>=500 then 2000 else 1000 end as newsalary from emp_salaries;
quit;

proc sql;
select *, case when sale>=500 then salary+2000 else salary+1000 end  as newsalary from emp_salaries;
quit;


*************************************


Condition	Expression
Sale >=500	Salary+2000
Sale >=350& Sale <500	Salary+1500
Sale>200 & Sale <350	Salary+1000
Sale <=200	Salary+500


proc sql;
select *, case when sale>=500 then salary+2000 
when sale>=350 and sale<500  then salary+1500
when sale<350 and sale>200   then salary+1000
else salary+500 end  as newsalary from emp_salaries;
quit;

Create Character variable for reporting:

Condition	Expression
Sale >=500	Excellent
Sale >=350& Sale <500	Good
Sale>200 & Sale <350	Average
Sale <=200	Poor

proc sql;
select *, case when sale>=500 then 'Excellent'
when sale>=350 and sale<500  then 'Good'
when sale<350 and sale>200   then 'Average'
else 'Poor' end  as Rating from emp_salaries;
quit;

Create Multiple variable for reporting:

Condition	Expression	Expression
Sale >=500	Salary+2000	Excellent
Sale >=350& Sale <500	Salary+1500	Good
Sale>200 & Sale <350	Salary+1000	Average
Sale <=200	Salary+500	Poor


proc sql;
select *, case when sale>=500 then salary+2000 
when sale>=350 and sale<500  then salary+1500
when sale<350 and sale>200   then salary+1000
else salary+500 end  as newsalary ,
case when sale>=500 then 'Excellent'
when sale>=350 and sale<500  then 'Good'
when sale<350 and sale>200   then 'Average'
else 'Poor' end  as Rating from emp_salaries;
quit;

Update statement:
Update or modify the statement by the expression.

Syntax <Table name> Set <Variable>=<Expression>;

Proc sql;
update emp_salaries set salary=salary+1000;
quit;

Run the updations conditional Basis...
Proc sql;
update emp_salaries set salary= case when sale>=500 then salary+2000 
when sale>=350 and sale<500  then salary+1500
when sale<350 and sale>200   then salary+1000
else salary+500 end;
quit;

Alter Statement:
		Modify the table.

Modifications: Adding new variables, drop the variables, Assign the constraints, delete the constraints.

Adding new variables:
Alter table <Table name> Add <Variable> <Datatype>;

Proc SQL;
Alter table Emp_salaries add newsal num, Rating char(10);
quit;
Proc sql;
update emp_salaries set Newsal= case when sale>=500 then salary+2000 when sale>=350 and sale<500  then salary+1500
when sale<350 and sale>200   then salary+1000
else salary+500 end;
Update emp_salaries set  Rating= case when sale>=500 then 'Excellent'
when sale>=350 and sale<500  then 'Good'
when sale<350 and sale>200   then 'Average'
else 'Poor' end;
quit;

Drop the variables:
Syntax:
Alter table <Table name> Drop <Variables>;

Proc sql;
Alter table emp_salaries drop salary,rating;
quit;

Delete the data from table:			
Proc sql;

delete from emp_salaries
where sale<=300;
quit;

Proc sql;
delete from emp_salaries;
quit;


Drop Statement:
		Drops table/views.
Syntax: Drop <Table/view> <Table name/ View name>;

Proc sql;
Drop table emp_salaries;
quit;

Run the data Conversions by the SQL Statements..
Data Conversions are Char to Numeric, Numeric to Numeric,  Numeric to Char, Char to Char.


Numeric to Char, Char to Char: 
source data:
pid	sex	age	race	color
P001	1	18	As	w
P002	2	23	Af	b
P003	1	25	As	w
P004	2	28	Af	w

/* Extraction */ 
Proc import datafile='E:\sas\source\xls\data.xls' Out=Dmsource
Dbms=Excel Replace;
Sheet='Sheet4$';
Run;

/* Run data conversions */
Proc sql;
select pid, case when sex=1 then 'Male' else 'Female' end as Sex, Age, Case when race='As' Then 'Asian' else 'African' end as Race, case when color='w' then 'White' else 'Black' end as color from Dmsource;
quit;
*******************************
Numeric to Numeric & Character to numeric: 

/* Extraction */ 
Proc import datafile='E:\sas\source\xls\data.xls' Out=Mh Dbms=Excel Replace;
Sheet='Sheet5$';
Run;

Proc sql;
select pid, case when visit='V1' then 1 when visit='V2' then 2 else 3 end as Visit,
case when dose=1 then 0.05 when dose=2 then 0.10 else 0.15 end as Dose from Mh;
Quit;
  
Describe Statement:

Report structure of the table or views in log window.

Table structure: Dataset name, Variable names, data types, length, informat, formats, constraints, index and buffer size.

Describe <Table/view> <Table name/view name>;

Proc SQL;
Describe Table Sashelp.class;
Quit;

Proc SQL;
Describe Table Sashelp.citimon;
Quit;


Bufsize(Buffer Size):
		It is a global option and it controls buffer size of the dataset.

Bufsize plays a keyrole in appending time.

Options Bufsize=nk;

1k - 1024 Records
2k - 2048 Records
3k - 3072 Records
4k - 4096 Records (Default)
5k - 5120 Records
..........

Create a Null dataset with required Bufzize:

Options Bufsize=6k;
Proc sql;
Create table customers (Custno Char, Month num, Goods num);
Quit;

Proc SQL;
Describe Table customers;
Quit;

Run appending process by SQL;

Data Dm1;
Input Siteno $ Subid Age;
cards;
S1	101	23
S1	102	46
S1	103	56
;
Data Dm2;
Input Siteno $ Subid Age;
cards;
S2	201	23
S2	202	46
S2	203	56
;

/* Run Appending*/ 
Proc sql;
insert into Dm1;
select * from Dm2;
Quit;




Create a Null dataset From Existed Dataset:
	
Proc SQL;
Create table Market Like 
Sashelp.citimon;
Quit;

SQL Operators:
These operators are 

Union All
Union
Intersect
Except

Union All : Adding tables or query results one by one in sequential order.

Union: Adding tables or query results one by one in Sorting order.
 
Intersect: Report Common values(Matching values ) From multiple tables.

Except: Report nonmatching values from one dataset compared to another dataset.

Applications:

Data Plans_2011;
Input Plancode $ Plan $ Year Cust; 
cards;
P101	1Min/1Rs  2011      340
P234	3Min/2Rs  2011	450
P342	1Sec/1P	  2011	560
P456	3Sec/2P	  2011	611
;
Data Plans_2012;
Input Plancode $ Plan $ Year Cust;
cards;
P101	1Min/1Rs               2012      230
P134	5Sec/3P	               2012	760 
P456	3Sec/2P   	2012	760
P543	2Min/50P	2012	650
P654	3Min/1Rs	2012	540 
P654	3Min/1Rs	2012	540
;


/* Sequential Order */
Proc sql;
select * from plans_2011
Union All
Select * From plans_2012;
Quit;
 
/* Sorting Order */
Proc sql;
select * from plans_2011
Union 
Select * From plans_2012;
Quit;

******************************************

Union operator default runs the sorting in ascending order using first variable in query result.

Union operator default eliminates duplicate records from the report and not from datasets.

Intersect :

Task: To report list of the plans which are running in 2011 and 2012 years(matching).Key variable Plancode, Plan. 

Proc sql;
select plancode, plan from plans_2011 
intersect
select plancode, plan from plans_2012;
Quit;

Customization:

Proc sql;
select plancode, plan, 'Run in 2011-12' as Message
from plans_2011 
intersect
select plancode, plan, 'Run in 2011-12' as Message
from plans_2012;
Quit;

Except:


Proc sql;
select plancode, plan, 'Only in 2011' as Message
from plans_2011 
Except
select plancode, plan, 'Only in 2011' as Message
from plans_2012;
Quit;


To use multiple operators in Applications:

Proc sql;
(select plancode, plan, 'Only in 2011' as Message
from plans_2011 
Except
select plancode, plan, 'Only in 2011' as Message
from plans_2012)
Union All
(select plancode, plan, 'Only in 2012' as Message
from plans_2012
Except
select plancode, plan, 'Only in 2012' as Message
from plans_2011);
Quit;

*******************************************

Subquery (Nested Queries):
Query inside another query.

Select * From(Select * From<Table>);

Using subqueries we can report matching and nonmatching data.
Task: 
To report list of plans and number of customers joined year-wise, and these plans must be available in 2012(matching data).

Proc sql;
Select * from Plans_2011 where Plancode in 
(select plan code from Plans_2012);
Quit;

Task: 
To report list of plans and number of customers joined year-wise, and these plans must not be available in 2012(non-matching data).


Proc sql;
Select * from Plans_2011 where Plancode not in 
(select plan code from Plans_2012);
Quit;


To use subqueries with operators in applications.

Task: 
To report list of plans and number of customers joined year-wise from 2011 & 2012, and these plans must be available in 2011 & 2012.

Proc sql;
Select * from Plans_2011 where Plancode in 
(select plancode from Plans_2012)
Union All
Select * from Plans_2012 where Plancode in 
(select plancode from Plans_2011);
Quit;


Correlated Subqueries:
		Within the subqueries condition clause can be used for outer and inner queries.

Task: 
To report list of plans and number of customers joined year-wise and these plans must be available in Both the years as well as customers trend moving to increasing mode.


Proc sql;
Select * from Plans_2011 where Plancode in 
(select plancode from Plans_2012
where cust > Plans_2011.cust)
Union All
Select * from Plans_2012 where Plancode in 
(select plan code from Plans_2011 
where cust < Plans_2012.cust);
Quit;


Comparison between the rows within the table using operators and subqueries: 

Data Ae;
Input Subid Visit $ Aeterm $;
Cards;
098	Visit1	Headac
134	Visit1	Cold
189	Visit1	Eardis
189	Visit1	Headac
234	Visit1	Eyedis
450	Visit1	Hairloss
078	Visit2	Fever
098	Visit2	Skinprb
129	Visit2	Cold
234	Visit2	Eardis
456	Visit2	Cold
510	Visit2	Cold
098	Visit3	Fever
054	Visit3	Eardis
234	Visit3	Eyedis
212	Visit3	Cold	
532	Visit3	Fever
;

Task: To report list of the subjects and whoever reported adverse events in all the visits.

Proc SQL;
select Subid from ae where Visit='Visit1'
intersect 
select Subid from ae where Visit='Visit2'
intersect 
select Subid from ae where Visit='Visit3';
Quit;

Task: To report list of the subjects and their adverse events whoever reported adverse events in all the visits.


Proc SQL;
select * from ae  where subid in
(select Subid from ae where Visit='Visit1'
intersect 
select Subid from ae where Visit='Visit2'
intersect 
select Subid from ae where Visit='Visit3');
Quit;


Task: To report list of the subjects and their adverse events visit-wise whoever reported adverse events only in first 2 visits. 

 
Proc SQL;
select * from ae  where subid in
(select Subid from ae where Visit='Visit1'
intersect 
select Subid from ae where Visit='Visit2'
Except
select Subid from ae where Visit='Visit3');
Quit;

Task: To report list of the subjects and their adverse events whoever reported adverse events only in last visit. 

Proc SQL;
select * from ae  where subid in
(select Subid from ae where Visit='Visit3'
Except
select Subid from ae where Visit='Visit1'
Except
select Subid from ae where Visit='Visit2');
Quit;

/* or */
Proc SQL;
select * from ae  where subid not in
(select Subid from ae where Visit='Visit1'
Union all
select Subid from ae where Visit='Visit2');
Quit;
******************************************************


Joins:
	Joins combine the tables using relations and report only matching data.

Types of joins

Simple Join
Inner Join 
Outer Join
Natural Join
Self Union
Union Join
Cross Join



/* Source data */

data cust_house;
input accno  House_loanno $ Year House_Amount;
cards;
110010	LH023	  2006	500000
110026	LH024	  2006	700000
110278	LH045       2006	250000
112345	LH046	  2007	300000
110345	LH056	  2007	500000
;	

data cust_Vech;
input accno Vech_loanno $ Year Vech_Amount;
cards;
110023	LV001	2006	45000
110026	LV002	2006	30000
110457	LV012	2007	40000
110278	LV045	2007	30000
110456	LV046	2007	40000
110345	LV056	2007	30000
;

Simple join:
	Combine multiple tables or query results using relation and report matching data.

Task: To report list of the customers and their loan details whoever taken housing loan and vehicle loan.

Proc sql;
select * from cust_house, Cust_vech 
where cust_house.accno=	Cust_vech.accno;
quit;

 
Run the joins using more than one condition:

Task: To report list of the customers and their loan details whoever taken housing loan and vehicle loan in the same year.

Proc sql;
select * from cust_house, Cust_vech 
where cust_house.accno=	Cust_vech.accno
and cust_house.year =	Cust_vech.year ;
quit;

	
Customization of the output:

Table alias:
Alternative name of the table.


Proc sql;
select h.accno, h.year, h.house_loanno, h.house_amount, 
v.vech_loanno,v.vech_amount
from cust_house as h,
Cust_vech as v
where h.accno=V.accno
and h.year =v.year ;
quit;

In above application h and v are table alias.

Inner Join:
		the tables/queries using relation and report matching data.

Proc sql;
select * from cust_house as h
inner join
cust_vech as v on
h.accno=v.accno;
Quit;

Outer Join: 
	These are 3 types.
1. Left Join
2. Right Join
3. Full Join


1. Left Join: Combine two tables and report all the records from left side table as well as matching records or conditional based records from right side table.

2. Right Join: Combine two tables and report all the records from right side table as well as matching records or conditional based records from left side table. 


3. Full Join: Combine two tables and report all the records from left or right side tables and matching rows.

In outer and inner joins Conditional clause is implemented by the ON Clause.

Proc sql;
select * from cust_house as h
left join
cust_vech as v on
h.accno=v.accno;
Quit;
Note: Left join result can be produced by the Right Join & Right join result can be produced by the left Join. In these cases, we have to change the Order of declaring the tables.


Proc sql;
select * from cust_house as h
right join
cust_vech as v on
h.accno=v.accno;
Quit;

Proc sql;
select * from cust_house as h
full join
cust_vech as v on
h.accno=v.accno;
Quit;


To produce outer join result by the merge.

Data left;
Merge Cust_house(in=a) Cust_vech;
by accno;
if a=1;
Run;

Data right;
Merge Cust_house Cust_vech(in=a);
by accno;
if a=1;
Run;

Data full;
Merge Cust_house Cust_vech;
by accno;
if a=1;
Run;



Natural Join:
		Combine Multiple tables and query results and report matching data without using condition.

In natural Join Process, within the tables only key variable names are same and other variable names should be different.


******************************************
Scenario:

Table	Variables		
P1		Prdcode	Price	
P2		Prdcode	prdtype	
P3		Prdcode	Prdmodel	
P4		Prdcode	Offer	Year
P5		Prdcode	Year		Sale

Here, Key variable is Prdcode and all the other variables are different.

******************************************


Data Ae;
input subid Aeterm $;
Cards;
101	Fever
108	Cold
134	Vomiting
167	Headac
Run;

Data SAe; 
input subid SAeterm $;
Cards;
101	Eardis
123	Eyedis
156	Stomachdis
167	Eyedis
234 	Eardis
run;

Proc sql;
select * from ae natural join sae;
quit;


In this join, Key variable is only same and all the other variables are different.

Self join: The table join with same table.

Data Prdsales;
input prdcode $ Jsale Fsale;
cards;
P101	230	450
P102	340	320
P103	210	250
;

Proc sql;
select * from prdsales where Jsale <Fsale;
quit;

Data Products;
input prdcode $ Model $ Price;
cards;
P101	Tv		45000
P102	Mobile	6700
P103	Laptop	34000
;

Data Prdsales;
input prdcode $ Jsale Fsale;
cards;
P101	230	450
P102	340	320
P103	210	250
;

Task: To report list of the products and their sales details, which products sales are increased in february month compared to January month.


Proc sql;
select * from products,prdsales where
products.prdcode=prdsales.prdcode and Jsale <Fsale;
quit;


Union Join: 	Run adding and combining process.

Manual checking of two datasets side by side.



Proc sql;
select * from ae union join sae;
quit;


Cross Join:
		It produces cartesian product result.

Cartesian product: One record combine with all the records in dataset.

Cross join result produced by simple join when we submit simple join without using condition.


Proc sql;
select * from ae,sae;
quit;

/* Back end */
Proc sql;
select * from ae cross join sae;
quit;
/* or */
Proc sql;
select * from Ae,sae where ae.subid
~=sae.subid;   * ~=  not equal to ;
Quit;

*********************************************

Difference between Merge and Joins:

Merge	Joins
1. Merge requires sorted data.	1. Internally does sorting in ascending order.
2. Key variable names and data types must be same.	2. In join process, key variable names are different, then no problem, but data type must be same.
3. In Merge process, trace out matching and non-matching daat uisng tracking variable.	3. In joins only matching data produced.


To report non-matching data using subqueries:

Proc sql;
select * from Ae where subid not in
(select subid from Sae);
Quit;

To report non-matching data from Multiple tables:

Proc sql;
select * from Ae where subid not in
(select subid from Sae)
outer union
select * from SAe where subid not in
(select subid from ae);
Quit;


**************************************************

SQL Options:

Number option:  
Display row numbers in output.

proc sql number;
select * from sashelp.class;
Quit;

Feedback Option:
Display feedback of the Query statement in log window.

proc sql feedback;
select * from sashelp.class;
Quit;

Flow Option:
Generates blocks in character values.

proc sql flow=5;
select * from sashelp.class;
Quit;

We have to pass minimum value 5 or more than 5, then only flow option works.
******************************************

Noexec option:
Stops execution process. Compilation will be done before.

Validate statement:
It displays message in log window whether query syntax is valid syntax or not.

Note: It makes sense only when we use noexec option along with validate statement.

Proc sql noexec;
Validate
Select name, case when sex='M' then 'Male' Else 'Female' end as sex, case when age >=11 and age <=12
then "11-12" when age >=13 and age <=15
Then "13-15" else "16-18" end as Age, 'Age intervals'
from Sashelp.class;
Quit;

Inobs option:
Read part of the records in sequential order from the first record.

proc sql inobs=5;
select * from sashelp.class;
Quit;

Outobs option:
Stores part of the records in sequential order from the first record.

proc sql Outobs=10;
create table Demo as
select * from sashelp.class;
Quit;

Dictionary tables:

In SQL Technology, dictionary means Library, dictionary table means Datasets.

/* Trace out feedback */
Proc sql feedback;
select * from dictionary.tables;
Quit;

/* Report required variables */
Proc sql feedback;
select libname, memname, memtype
from dictionary.tables;
Quit;

Report List of datasets from required Library:

/* Create Library */
Libname User1 'E:\sas\source\sasfiles';

/* Report list of datasets from required libraries */
Proc sql ;
select libname, memname, memtype
from dictionary.tables where 
libname='USER1' and Memtype='DATA';
Quit;

Proc sql ;
select libname, memname, memtype
from dictionary.tables where 
libname='USER1' and Memtype='DATA' and memname like 'S%';
Quit;

****************************************************
Task: To report number of variables and number of variables of datasets present in all the libararies.

/* Fetch datasets details */ 
proc sql;
create table table_details as  
select  libname, memname, memtype from dictionary.tables
where libname like '%' and memtype ='DATA' ;
Quit;

/* Report */
data _null_;
file print ;
set table_details;
dataset=trim(libname)|| '.' || memname;
if exist (dataset)=1 then do;
op=open(dataset);
obs=attrn(op, 'nobs');
var=attrn(op,'nvar');
close=close(op);
put @ 10  'dataset ' dataset ' contains ' var 'Observations and ' obs 'Records';
Put ' ' ;
end;
Run;

**********************************************************

Views: It is one of the sas files and work like a dataset.

But views store the data in query format, so it reduces the storage place compared to Dataset.

Reducing the storage place, but requires more processing time.

Views are not storage areas, but are visible areas.

** Views takes more processing time to produce the result.


 


Views are created from the master file.

These master files are either datasets/external files.

Note: If the master files are modified, then the views are affected.

Ff the master file is deleted, then views are not working.


Views are two types.

1. Native Views
2. Interface Views


1. Native Views : These views are created from the dataset according to sas nature.
These are two types.

i. Dataset View
ii. SQL View


i. Dataset View: These views are created from dataset by the dataset block.

ii. SQL View: These views are created from dataset/external files by the SQL block.


2. Interface Views : These views are created from the external files by using access procedure.

***************************************************

Create SQL Views from datasets:

Proc sql;
create view dm1 as 
select * from Sashelp.class;
Quit;


Proc sql;
create view dm2 as 
select Name,Age, sex from Sashelp.class
Where sex='M';
Quit;

/* Check structure of the view */
Proc sql;
describe view dm1, dm2;
Quit;

/* Work like a dataset */
proc print data=dm2;
run;

Create dataset Views:


data dm3/view=dm3;
set sashelp.class;
run;

Assignments:
1. Create a view from the dataset.
2. Create a dataset from  the view.
3. Create a view from the view.
4. Create a dataset from  the dataset.

*****************************************

Drop the views:

proc sql;
drop view dm1, dm2;
quit;

*****************************************

Functions:

Types of functions
1. SQL functions.
2. Arithmentic Functions/Mathematical Functions.
3. Aggregate Functions/Statistical Functions.
4. String Functions.
5. Date and Time Functions.

1. SQL functions:

Coalesce function:  Replace the missing values for reporting.
Coalesce(<variable name>, value)

/* Source data */

Data Dm;
input Subid Age Gender $ Race $;
Cards;
101	23	F	Asian
102	.	M	Asian
103	34	M	.
104	30	F	Asian
105	.	M	.
106	34	F	Asian
;

Task : To replace the age missing values by 20, to replace the race missing values by the 'Others'.

Proc sql;
select subid, coalesce(age,20) as age, gender, coalesce(race,'Others') as Race from Dm;
Quit;

To Replace the missing values in dataset.

Proc sql;
update dm set age=20 where age=. ;
update dm set race='Others' where race=' ' ;
Quit;

To Replace the missing values in dataset, sas code is more efficient than sql code.

Distinct Function:

Delete duplicates from the report or
Report Unique values from the variables.

Delete duplicates from the report:

Data Employ;
input Eid Des $;
Cards;
101	Tester
102	Analyst
102	Manager
;

Proc sql;
Select distinct(Eid) as eid, Des 
from Employ;
Quit;


Proc sql;
Select distinct(Eid) as eid 
from Employ;
Quit;


Report Unique values from the variables:

Libname user1 'E:\sas\source\sasfiles';

/* List of Customers */
Proc sql;
select distinct(custno) as cst
'List of Customers'  from user1.customers;
Quit;


/* List of Products */
Proc sql;
select distinct(prdcode) as Prd
'List of Products'  from user1.customers;
Quit;

/* List of Adverse Events */

Proc sql;
select distinct(actype) as Act
'List of Adverse Events'  from user1.Ae
Where actype ~= 'Null';
Quit;


2. Arithmentic Functions/Mathematical Functions:

int function:
it returns integer values.
Integer>> Without decimals.

Round function: 
It returns roundup the values at nearest integer or nearest decimal place.

Ceil Function:
Round up to highest integer.

Floor Function :
Round up to lowest integer.

fact Function:
It returns factorials.

Sqrt Function:
It returns square root values.

Abs function: Absolute  --> It returns negative values into positive format.

Mod functions: 
It returns reminder.

Log / loge:
It returns log e base values.

Log10 :
It returns log10 base values.

data Test;
input x;
cards;
23.456
12.231
78.578
23.231
-15.231
36.000
run;

Proc SQL;
Select x, int(x) as It, Round(x) as R1, Round(x, 0.1) as R2, Round(x, .01) as R3, Ceil(x) as C, floor (x) as F, SQRT(x) as SR, abs(x) as Ab, Mod(x,6) as M, Log(x) as Lg1, log10(x) as Lg2 
From Test;
Quit;

*************************************************


3 ). Aggregate Functions or Statistical Functions: 

Count or Freq Function: Generate frequency.
Sum Function: Generates sums.
Mean Function: Generates mean values or averages.
Var Function: Generates Variance.
Std Function: Generates Standard Deviation.
Max Function: Generates Maximum.
Min Function: Generates Minimum.
Range function: Generate Range(maximum-Minimum).
N : Generates number of non-missing values.
Nmiss : Generates number of missing values.

Note: Count or Freq, Range, N and Nmiss functions run analytical operations column-wise.

Sum, Mean, Var, Std, Max and Min functions run analytical operations across column-wise & Row-wise.

Count or Freq: Generates frequency values or frequency tables.

 frequency tables are two types.
1. One-way to n-way frequency table(without comparisons)
2. Cross-tabulate frequency table (with comparisons)

1. One-way to n-way frequency table(without comparisons)
	Generates One-way to n-way frequency tables.

Scenarios: 
Dataset name : Customers
Task : Report Number of operations by Customer Number.
Key variable: Custno.
Frequency variables can either be character or numeric.
Frequency variable can be called Classifiction variable or Grouping variable or Categorical variable.

Group By Clause: Run analysis operations group-wise.
Group By Clause has the nature of Order by clause.

/* Collect Datasets */
Libname User1 'E:\sas\source\sasfiles';
Proc sql;
select custno, count(custno) as Frq 
'No of Operations' From User1.customers 
Group by Custno;
Quit;

Task : Report Number of operations by Branch-wise.
Key variable: bchcode.

Proc sql;
select bchcode, count(bchcode) as Frq 
'No of Operations' From User1.customers 
Group by bchcode;
Quit;


Task : Report Number of operations by Product-wise, descending order by Frequency variable.

Key variable: Prdcode.

Proc sql;
select prdcode, count(prdcode) as Frq 
'No of Operations' From User1.customers 
Group by prdcode order by frq desc;
Quit;

Run the data conversions for Reporting:

Number of operations per month-wise.

Key variable: Month.

Proc Sql;
select Month, count(month) as Frq 'No of Operations' From User1.customers 
Group by month;
Quit;

Proc Sql;
select case when month=1 then 'Jan' when month=2 then 'Feb' else 'Mar' end as month, count(month) as Frq 'No of Operations' From User1.customers 
Group by month;
Quit;

Run the data conversions for analysis and Reporting purpose:

Number of subjects by age intervals.

Dataset name : Sashelp.class
Key variable : Age

Age intervals are :
	10-12
	13-15
	16-18

Proc sql;
select case when age >=10 & age <=12 then '10-12' when age >=13 & age <=15 then '13-15' else '16-18' end as age1 'Age intervals' , count(calculated age1) as frq 'No of Subjects' 
from sashelp.class group by age1;
Quit;

Note: Reporting purpose, data conversions are loaded in same variable. For analysis and reporting purpose loaded in new variable.

Calculated keyword: 

Controls the sas system for collection of values from report buffer.

Within the function, we have to use calculated keyword whenever a new variable is created for report as well as for analysis.


2. Cross-tabulate frequency table (with comparisons)

Number of operations by customer and product-wise.
Dataset name : User1.Customers
Key variable : Custno, Prdcode

Proc sql;
select custno, prdcode, count (custno) as Frq 
'No of Operations' From User1.customers 
Group by Custno, prdcode;
Quit;


Task: Number of customers run the operation and these customers are done total number of operations.

Proc sql;
Select 'No of customers' as message, count(distinct(custno)) as frq 'No Of' 
From User1.customers
Union all 
Select 'Total No of operations' as message, 
count(*) as frq 'No Of' 
From User1.customers;
Quit;


**********************************************

Run the data cleaning by generating frequency tables:

Task: Report number of subjects reported different types of adverse events.

Note: The same subject reports same adverse reaction more than one time then we have to count only one time.

Frequency table : 		Actype
Cleaning variable:	 	Subid, actype.


/* Collect Datasets */
Libname User1 'E:\sas\source\sasfiles';

/* Cleaning */
proc sort data=user1.ae out=aeclean1 nodupkey;
by subid actype;
run;

/* Freq Table */
Proc sql;
select actype 'Adverse Events', 
count(actype) as frq 'No Of Subjects' 
from aeclean1 group by actype 
having actype ne 'Null';
Quit;

Having Clause: Runs the filters whenever working with group by clause.

Task: Report number of subjects reported adverse events visit-wise.

Note: The same subject reports adverse reaction more than once in same visit then we have to count only one time.


Frequency table : 		Visit
Cleaning variable:	 	Subid, Visit.

/* Cleaning */
proc sort data=user1.ae out=aeclean2 nodupkey;
by subid visit;
where actype ~= 'Null';
run;

/* Freq Table */
Proc sql;
select visit, 
count(visit) as frq 'No Of Subjects' 
from aeclean2 group by Visit;
Quit;

Cross-tabulate frequency table (with comparisons)

Task: To report number of subjects reported reactions and no reactions visit-wise.

Note: The same subject reports adverse reaction more than once in same visit then we have to count only one time.

Frequency table : 		Subid, Visit.
Cleaning variable:	 	Subid, Actype.

/* Cleaning */
proc sort data=user1.ae out=aeclean3 nodupkey;
by subid visit;
run;

/* Freq Table */
Proc sql;
select visit, case when actype='Null' then 'No reaction' else 'Reaction' end as actype1 'Action Type', count( calculated actype1) as frq 'No of Subjects' from aeclean3
Group by visit, actype1;
Quit;


Task: Report number of adverse events reported and total number of subjects reported adverse events.

Proc sql;
Select 'No Of Adverse evets' as Term, Count(distinct(actype)) as frq 'No of'
From user1.ae
where actype ~='Null'
Union all 
Select 'Total No Of Subjects with Adverse evets' as Term, Count(distinct(subid)) as frq 'No of'
From user1.ae
where actype ~='Null';
Quit;

Report duplicates using frequency:

for duplicate data values:

Data Employ;
input Eid Des $;
Cards;
101	Tester
102	Progmer
102	Manager
103	Analyst
104	Manager
104	Analyst
;

Proc sql;
Select *, Count(Eid) as Frq From Employ 
Group by Eid
having frq>1;
Quit;

/* Or */

Proc sql;
Select * From Employ 
Group by Eid
having Count(Eid)>1 ;
Quit;

for duplicate observations:

Data Emp_salaries;
input Eid Month salary;
Cards;
101	1	2000
102	1	3000
101	1	2000
102	2	4000
101	2	3000
101	3	3000
102	3	4000
;

proc sql;
select * from emp_salaries 
group by eid, month
having count(eid)>1;
quit;

********************************************


Generate summary reports:

It contains multiple statistical operations including frequency.

These summary reports can be generated across row-wise and column-wise.

Across row-wise:

Data Prodsales;
input prdcode $ Jsale Fsale Msale;
Cards;
P101	230	340	210
P102	340	310	210
P103	450	560	230
;

Task: To report sum, mean, standard deviation, Maximum and minimum sales product-wise.

Proc sql;
select prdcode, sum(Jsale, Fsale,msale) as Ts 'Sum of sale', mean(Jsale, Fsale,msale) as Ag 'Mean of sale', std(Jsale, Fsale,msale) as sd 'Std of Sale', Max(Jsale, Fsale,msale) as Mx 'Max of Sale', Min(Jsale, Fsale,msale) as Mn 'Min of Sale'
From  Prodsales;
Quit;


Run analytical operations across column-wise:

Task: To report sum, mean, standard deviation, Maximum and minimum sales month-wise.

proc sql;
select 'Jan' as Month, sum(Jsale) as Ts 'Sum of sale', mean(Jsale) as Ag 'Mean of sale', std(Jsale) as sd 'Std of Sale', Max(Jsale) as Mx 'Max of Sale', Min(Jsale) as Mn 'Min of Sale'
From  Prodsales
Union all
select 'Feb' as Month, sum(Fsale) as Ts 'Sum of sale', mean(Fsale) as Ag 'Mean of sale', std(Fsale) as sd 'Std of Sale', Max(Fsale) as Mx 'Max of Sale', Min(Fsale) as Mn 'Min of Sale'
From  Prodsales

Union all
select 'Mar' as Month, sum(Msale) as Ts 'Sum of sale', mean(Msale) as Ag 'Mean of sale', std(Msale) as sd 'Std of Sale', Max(Msale) as Mx 'Max of Sale', Min(Msale) as Mn 'Min of Sale'
From  Prodsales;
quit;


Run analytical operations across column-wise using grouping variable:

In these cases, data must be available in vertical shape.
Grouping analysis can be called multidimensional analysis.


One-Dimensional analysis: 
/* Collect Datasets */
Libname User1 'E:\sas\source\sasfiles';


proc sql;
select custno, Count(custno) as frq 'No Of' , 
sum(goods) as Tg 'Sum of Goods', 
mean(goods) as Ag 'Mean of Goods', 
Max(goods) as Mx 'Max of Goods', 
min(goods) as Mn 'Min of goods'
From user1.customers
Group by custno;
Quit;


proc sql;
select custno,month, Count(custno) as frq 'No Of' , 
sum(goods) as Tg 'Sum of Goods', 
mean(goods) as Ag 'Mean of Goods', 
Max(goods) as Mx 'Max of Goods', 
min(goods) as Mn 'Min of goods'
From user1.customers
Group by custno, month;
Quit;

To report Missing and non-missing records:

/* To report Missing and non-missing records */ 

Proc sql;
select N(sale) as Nm 'Non-missing', 
Nmiss(sale) as NMi 'Missing' 
From user1.salesdata;
quit;


Proc sql;
select state,  N(sale) as Nm 'Non-missing', 
Nmiss(sale) as NMi 'Missing' 
From user1.salesdata
group by state;
quit;

Monotonic()

It is a summary function and generates sequential numbers.
But does not support generation of sequential numbers group-wise.

Proc sql;
select *, Monotonic() as Sqno 'Sequence number' 
From Sashelp.class;
Quit;


** Interview **

Report first, last and middle records from the datasets.

Proc sql;
select * From Sashelp.class
having Monotonic() =Min (Monotonic()) 
Union all
select * From Sashelp.class
having Monotonic() =Round(mean (Monotonic())) 
Union all
select * From Sashelp.class
having Monotonic() =Max (Monotonic()) ;
Quit;

String Functions or character functions:
Run String Operations.

Length Function: It returns the length of the statement or  Number of characters in string including spaces(leading and embedded blanks).

Length(<variable name>)
Index: It returns position of 'Character or word'.

Index (<variable name>, 'Char/word')

If character or word is repeated multiple times within the string, Then SAS returns position of the first occurrence.

If the character or word not available in string, Then SAS returns '0'.

Index c : It returns position of the character.
Index w : It returns position of the word.
index c (<variable name>, 'Char')
index w (<variable name>, 'word')


Find: Similar nature of Index.

Find (<variable name>, 'Char/word')

find c and find w functions are available from SAS v9.2 onwards.

Count Function: It returns the required char repeated number of times within the string.

Count (<variable>, 'Char')

Countw Function: It returns string contains number of words.
Countw (<variable>)
This feature is available from SAS v9.2 onwards.

Quote : It returns the values in double quotations.

quote (<variable>);

Reverse : It returns the values in reverse path. 
reverse (<variable>);

Compress : It remove characters from the strings. 

compress (<variable>, 'Char') 

If we submit without second argument, then it removes  blanks from the string. 

Compbl: Converts multiple blanks as a single blank.
compbl (<variable>)
 
Translate :
	 It replaces the characters within the string 

Translate (<variable>,  'New Char', 'Old Char')

Tranwrd: It replaces the word within the sting.

Tranwrd (<variable>, 'Old word', 'New word')

Concatenation || 
Combine the strings

In Sql syntax, Only character to character concatenation is available.


Trim functions : Removes Leading or trailing blanks from the string.
Trim (<variable>)

Scan function: It returns the required word from string.
Scan (<variable>, <position>, <dlm>)

If we submit without Delimiter value then sas default  takes any special character as a delimiter.

* Scan function returns in string up to 32,767 characters within the word, but load in new variable upto 200 characters.


Substr: It returns part of the string.

Substr (<variable>, <start position>, <number of chars>)

* If we submit without last argument, Then SAS returns up to end.
**********************************************************
Upcase : It returns string value in uppercase.

upcase (<variable name>)


Lowcase/ Lowercase: It returns string value in lowercase.

Lowcase(<variable name>)
Lowercase(<variable name>)
-
/* collect datasets */

Libname User1 'E:\sas\source\sasfiles';

Proc sql;
select fname, length(fname) as Len, 
index(fname, 'a') as Ind1, 
index(fname, 'rao') as Ind2, 
find(fname, 'a') as find1, 
find(fname, 'rao') as find2, 
Upcase(fname) as Upc
From User1.dm;
Quit;

proc sql;
select fname, quote(fname) as Qt, Count(fname, 'a') as Cnt,
Countw(fname, 'a') as words
From User1.dm;
Quit;

proc sql;
select fname, compress(fname, 'a') as comp1, 
compress(fname ) as comp2, 
Translate(fname, 'A', 'a') as Tr, 
Scan(fname,2) as Scn 
From User1.dm;
Quit;

proc sql;
select fname, substr(fname, 3,9) as sub1, 
substr(fname, 3) as sub2 
From User1.dm;
Quit;

Run data management operations by the string functions:

proc sql;
select pid, scan(fname, 1) as surname, 
substr(fname, index(fname,' ') +1) as name,
upcase(gender) as Gender 
From User1.dm;
Quit;

proc sql;
select pid, substr(fname,1, index(fname,' ') -1) as surname, 
substr(fname, index(fname,' ') +1) as name,
upcase(gender) as Gender 
From User1.dm;
Quit;



Data Mh_Ae;
input subid Dose $ Aeterms : $ 20.;
cards;
101	Asp-05MG Headac&Eardis
102	Asp-10MG	Fever&Eyedis
103	Asp-15MG	Cold&Eydis
;

Task: Dose measure, Capital MG convert like small mg, as well as highest dose value keep in quotations.
Aeterm values load in Ae and sae variables.

proc sql;
select subid, case when dose='Asp-15MG' then Quote (tranwrd(dose,'MG', 'mg')) else 
tranwrd (dose,'MG', 'mg') end as Dose, 
Scan(Aeterms,1,'&') as Ae, 
Scan(Aeterms,2,'&') as SAe
From Mh_Ae;
Quit;



Date & Time Functions:

Day :
		It returns the date values(1-31) from the date.

Month : 
		It returns month value(1-12) from the date.

Year :
		It returns year value from the date.

Qtr :
		It returns quarter(1-4.

Weekday :
		It returns week days(1-7).

Hour :
		It returns hours in 24-hr Format from Time. 

Minute :
		It returns minutes  from Time.


Second :
		It returns Seconds from Time.

Datepart  :
		It returns date values from date&time. 

Timepart  :
		It returns time values from date&time.

Date() :
		It returns the date values from the OS. 

Today() :
		It returns the date values from the OS.



time() :
		It returns the time values from the OS.


*********************************************
/* Source Data */

Data Test;
input date : date9. Time : time8. 
Dtime : datetime18. ;
format date date9. Time time8. 
Dtime datetime18. ;
cards;
14Jan2005		12:34:23		19May2006:12:23
15Oct2006		13:42:56		20oct2009:19:20
run;

/* call the date and time functions */

proc sql;
select day(date) as dy, 
month(date) as Mn, 
year(date) as Yr, 
Qtr(date) as Qt, 
weekday(date) as wk, 
hour(time) as hr, 
Minute(time) as Mnt, 
second(time) as sec, 
datepart(Dtime) as d format=date9., 
timepart(Dtime) as T format=time8.
from Test;
Quit;

Run the filters using date functions:

Proc sql;
select * from sashelp.air;
where year(date) =1959;
Quit;

Proc sql;
select * from sashelp.air;
where year(date) =1959 and month(date)=5;
Quit;

Proc sql;
select * from sashelp.air;
where year(date) =1959 and Qtr(date)=3;
Quit;

Proc sql;
select * from sashelp.air;
where year(date) in (1951,1955,1959) and month(date)=2;
Quit;

Create new variable for reporting using date function:

Proc sql;
select *, case 
when weekday(date)=1  then 'Sunday' 
when weekday(date)=2 then 'Monday' 
when weekday(date)=3 then 'Tuesday' 
when weekday(date)=4 then 'Wednesday' 
when weekday(date)=5 then 'Thursday' 
when weekday(date)=6 then 'Friday' 
Else 'Saturday' end as Weekday 
from sashelp.air;
Quit;

*******************************
Constraints:
			Constraints objective is to improve data quality, accuracy whenever loading data into tables. 


Standard specifications to improve data Quality or accuracy:
1. Loading the data without duplicates.
2. Loading the data without missing values.
3. Loading the data conditional based.
4. Loading the data in tables with relations.

Types of constraints:

1. Unique
2. Not Null
3. Check
4. Primary key
5. Foreign Key
6. Reference key

1. Unique: Loading the data without duplicate data values.

2. Not Null: Loading the data without missing values(either numeric/character).

3. Check: Loading the data conditional based.

4. Primary key: Loading the data without duplicate data values, without missing values and without duplicate observations.

5. Primary key, Foreign Key, Reference keys: Loading the data into one table(fact table) depending upon another table(Dimension table).

Integrity name of the constraints: 

It is the option name or address of the constraint.
This integrity names are default assigned by the SAS System, in some cases by the users.
 
System d,efined Integrity names:

Constraints				Integity Names

1. Unique				_UNxxxx_

2. Not Null				_NMxxxx_

3. Check				_CKxxxx_

4. Primary key				_PKxxxx_

5. Foreign Key			_FKxxxx_


Note: Integrity names can be given upto 8 characters.
They should start with underscore and end with underscore.

Constraints can be assigned in two ways.

1. Column-wise.
2. Table-wise.


1. Column-wise: Assign according to variable names.

2. Table-wise: Assign constraints for group of variables/single variable according to table.

Unique, not null, check and primary key can be used as column-wise constraints.

Primary key and Foreign key can be used as Table constraints.

Constraints can be assigned using three types of applications. 

1. Without using Constraint statement.
2. Using with Constraint statement.
3. By Alter statement.

DW System:

Steps for Building database system.

1. Data Modeling/ Designing of Database.

2. ETL Process

3. Quality Control

*********************************************
1. Data Modeling/ Designing of Database:

Create null datasets with variables, without observations and assign necessary constraints.


CRT-DDS(Case Report Tabulation-Data Definition Specifications) for each domains can be specified in define.xml

Example: DM CRT for Demographics
CM CRT for Concomitant medication Dataset

ETL Process:
Extract the data, run various transformations and loading the data.


 

Quality control to check the quality of the data using filters and SOPs.

Work with Unique, Not null, Check:


Source data :


pid	age	gender
101	56	m
101	56	f
102	67	m
103	34	f
104	45	f
105		m
106	34	f


Loading requirements: 

1. Id of the patient must be unique. Age must be available, Gender must be male in Uppercase 'M'.

Target table: Dm1, Dm2.

Variables: Subid	Num
		 Age		Num
		 Gender	Char


/* Data Modeling or Design of null datasets */

Libname cdw 'E:\SAS\clinical\Lib2';

/* Assign constraints without using constraint statement */

Proc sql;
create table cdw.dm1(Subid Num Unique, 
Age num not null, 
Gender char check (Gender='M'));
Quit;

/* Assign constraints using constraint statement */

Proc sql;
create table cdw.dm2
(Subid Num, 
Age num, 
Gender char, 9642036714
constraint Uk1 Unique(subid), 
constraint Nt1 not null(age),
constraint Ck1 check (Gender='M'));
Quit;


/* Check */
proc sql;
describe table cdw.dm1, cdw.dm2;
quit;

/* ETL Process */

/* Extract */

filename savin 'E:\SAS\source\xls\constraints.xls';

Proc import datafile=savin out=dmsource
dbms=excel replace;
sheet='sheet8$';
Run;

/* Transformations */
Data Dmtarget;
set dmsource;
Gender=upcase(Gender);
Rename pid=Subid;
Run;


/* Loading */

Proc append base=cdw.dm1 
data=dmtarget force;
Run;


Proc append base=cdw.dm2 
data=dmtarget force;
Run;


Control duplicate data values, missing values:

To assign unique, not null constraints for one variable or assign primary key as a column constraints.

Note: If we use primary key as a column constraint, then it controls data loading without duplicate data values and without missing values.

Source data: 

pid	age	gender
101	45	female
101	45	male
102	56	male
103	45	female
	23	female
105	34	male

Loading requirements: 
1. Id of the patient must be unique and must be available.

Target table: Dm3, Dm4.

Variables: Subid	               Num
	   Age		Num
	   Gender  	Char

Table	            Variable		Constraint
Dm3		Pid			Unique, not null
Dm4		Pid			Primary Key


/* Data Modeling or Design of null tables */

Libname cdw 'E:\SAS\clinical\Lib2';

Proc sql;
create table cdw.dm3(Pid Num Unique not null, 
Age num, 
Gender char);
Quit;

Proc sql;
create table cdw.dm4
(Pid Num Primary key, 
Age num, 
Gender char);
Quit;


/* Check */
proc sql;
describe table cdw.dm3, cdw.dm4;
quit;

/* ETL Process */

/* Extract */

filename savin 'E:\SAS\source\xls\constraints.xls';

Proc import datafile=savin out=dmsource
dbms=excel replace;
sheet='sheet7$';
Run;


/* Loading */

Proc append base=cdw.dm3 
data=dmsource force;
Run;

Proc append base=cdw.dm4 
data=dmsource force;
Run;

Control the data loading without duplicate observations:

In these cases, assign the primary key for group of variables.

Source data: 

pid	visit	drug
101	week1	05mg
102	week1	10mg
103	week1	15mg
104	week1	05mg
104	week1	05mg


Note: Each subject should be received treatment per visit  only one time.

Transformations:
week1 load like	1
week2 load like	2
drug rename to dose
pid rename to subid

Target dataset: Mh
Variables: Subid	Num
	     Visit	Num
           	    Dose	Char

Variables		Constraints
Subid, Visit		Prmary key

	
/* Design  null tables */
Libname cdw 'E:\SAS\clinical\Lib2';

Proc sql;
create table cdw.Mh(Subid num, Visit Num,
Dose char, 
Constraint Pk1 Primary key(subid, Visit));
Quit;

/* Check */
proc sql;
describe table cdw.mh;
quit;

/* ETL Process */

/* Extract */

filename savin 'E:\SAS\source\xls\constraints.xls';

Proc import datafile=savin out=Mhsource
dbms=excel replace;
sheet='sheet6$';
Run;

/* Transformations */
Data Mhtarget;
set mhsource;
If visit='week1' then v=1;
else v=2;
Drop visit;
Rename v=Visit Drug=Dose Pid=Subid;
Run;


/* Loading */

Proc append base=cdw.mh
data=Mhtarget force;
Run;
Loading the data into tables with relation (RDBMS):

In these cases, control the data loading in flat table using dimension table.
In this process, dimension table contains only one primary key, but fact table contains one or more than one foreign keys.


 



Relations: 
1. Control the data loading in one fact table using only one dimension table.
2. Control the data loading in Multiple fact tables using only one dimension table.
3. Control the data loading in one fact table using Multiple dimension table.


Assign the constraints for existed table by the Alter statement:

Alter table <table name> add constraint <integrity name> type (<variable>)
4
Data Employ;
Input Eid Des $ Salary;
Cards;
101	Tester		2000
102	Progmer	3000
103	Analyst	5000
;

/* Assign constraints */
Proc sql;
Alter table Employ add 
constraint Uk2 Unique(Eid),
constraint Nt2 not null(des),
constraint Ck2 Check(salary>0);
Quit;


/* Check */
proc sql;
describe table employ;
quit;

Delete the constraints from the tables:


Alter table <table name> Drop constraint <integrity name>;

/* find integrity names */
proc sql;
describe table employ;
quit;

/* Drop constraints */
Proc sql;
Alter table Employ 
Drop Constraint
uk2, nt2, ck2;
quit;

****************************************************

Data Modeling or Designing of Database:

This process can be implemented in 3 Steps.

1. Concept Model
2. Logical Model
3. Physical model


1. Concept Model: It Shows relation between the tables.

 


2. Logical Model: It Shows relation between the tables with necessary parameters(variables).

	
 

3. Physical model: It Shows relation between the tables with necessary parameters (variables) and constraints or keys.


 





1. Control the data loading in one fact table using only one dimension table.
 In this process, we have collect part of the data or required data using primary and foreign keys.
 

Target Datasets:

Dimension Tables : Product_Details
          Variables:	Prdcode	-	Char
			PrdType	-	Char
			Prdmodel	-	Char

Fact Tables : Product_sales
 Variables:    	Prdcode       -	Char
		            Year	          -	Num
			    Sale         -	Num


/* Design  null tables */
Libname Mdm 'E:\SAS\clinical\Lib2';
 
/* Dimension Table */
Proc sql;
Create table mdm.Product_Details(Prdcode Char Primary key, Prdtype Char Check (Prdtype='Tv'), Prdmodel char);
Quit;
/* Fact Table */

Proc sql;
Create table mdm.Product_sales(Prdcode Char, 
Year num, 
Sale num, 	
Constraint Fk1 Foreign Key (Prdcode)
References mdm.Product_Details);
Quit;

/* Check */
Proc sql;
Describe table mdm.Product_Details, mdm.Product_Sales;
Quit;


/* Extract */
/* Extract Source Data */

Data Products;
Input Prdcode $ Prdtype $ Prdmodel $;
Cards;
P018		Tv		Smart3D
P234		Mobile	Asha
P123		Tv		LED
P678		Laptop	Ventro
P897		Mobile	Lumia
P890		Laptop 	Vestro
P567		Tv		LCD
;



Data Prdsales;
Input Prdcode $ Year Sale;
Cards;
P018	2008	234
P234	2008	210 
P123	2008	560	
P678	2008	120
P897	2008	340
P890	2008	450
P567	2008	230
P018	2009	334 
P234	2009    230
P123	2009	460
P678	2009	220
P897	2009	390
P890	2009	420
P567	2009	330
;
/* Loading */
Proc append Base=Mdm.product_details
Data=Products Force;
Run;

Proc append Base=Mdm.product_sales
Data=Prdsales Force;
Run;


******************************************************

2. Control the data loading in Multiple fact tables using only one dimension table.

Target Datasets: 

Dimension Table: Dm
Variables:	          Subid  	Char 
 			Age 		num
 			Gender 	Char

Fact Table: Mh
Variables:	Subid 	Char 
 		Visit   	Char
 		Trt	 	Char

Fact Table: Ae
Variables:	Subid 	Char 
 		Visit   	Char
 		Aeterm 	Char

ER Diagram/ Physical Model
 


/* Design Null Datasets */

Libname CDM 'E:\SAS\clinical\Lib3';

/* Create Dimension Table */

Proc sql;
create table cdm.Dm (Subid char primary key, Age num, gender Char check (gender='Male'));
Quit;

/* Create fact table */
proc sql;
create table cdm.mh(Subid char references cdm.Dm, visit char, trt char);
quit;

/* Create fact table */
proc sql;
create table cdm.ae(Subid char references cdm.Dm, visit char, aeterm char);
quit;
/* Check */
proc sql; 
describe table cdm.dm, cdm.mh, cdm.ae;
quit;


/* Extraction of source data */
Data demo;
input subid $ Age gender $;
cards;
U001	34	Male
U002	40	Female 
U003	32	Female
U004	23	Male
;
Data medi;
input subid $ visit $ trt $;
cards;
U001	Visit1	05mg
U002	Visit1	05mg 
U003	Visit1	10mg
U004	Visit1	10mg
U001	Visit2	Placebo
U002	Visit2	05mg 
U003	Visit2	10mg
U004	Visit2	Placebo
U001	Visit3	05mg
U002	Visit3	Placebo
U003	Visit3	Placebo
U004	Visit3	10mg
;
Data Adevents;
input subid $ visit $ Aeterm $;
cards;
U001	Visit1	Headac
U002	Visit1	Fever 
U003	Visit1	Cold
U004	Visit1	Rash
U001	Visit2	Fever
U002	Visit2	Vomiting 
U003	Visit2	Fever
U004	Visit2	Rash 
U001	Visit3	Headac
U002	Visit3	Rash
U003	Visit3	Fever
U004	Visit3	Cold
;

/* Loading */
Proc append base=cdm.dm 
data=demo force;
run;
Proc append base=cdm.mh 
data=medi force;
run;

Proc append base=cdm.ae 
data=adevents force;
run;

Surrogate Key:
One of the primary key and assign for secondary variable, if primary variable is character.

Character to character comparisons  take more processing time as well as increase the storage place.

Surrogate key is a small integer.

Reduces the storage place and processing time. 
 

Dimension table contains primary and secondary variables but fact table contains only secondary variables.

Convert the data historical to new format or generate surrogate key variables:

Source data:

Prdcode	Prdname Month	Sale
P101		TV	M1		340
P101		TV	M2		430
P101		TV	M3		320
P102		Prize	M1		140
P102		Prize	M2		230
P102		Prize	M3		310


 

/* Design Null Datasets */

Libname MDM 'E:\SAS\clinical\Lib4';

/* Create Dimension Table */

Proc sql;
create table Mdm.Product_details(
prdkey num, 
prdcode char, 
prdname char,
constraint pk3 primary key(prdkey)
);
Quit;

/* Create Fact Table */
Proc sql;
create table Mdm.sales_information(
prdkey num, 
month char,
sale num,
constraint Fk1 foreign key(prdkey)
references Mdm.Product_details
);
quit;


/* Check */
proc sql;
describe table 
mdm.Product_details,
Mdm.sales_information;
quit;

/* ETL Process */
/* Extraction */

filename text1 'E:\sas\source\dlm\product_sales.txt'; 

proc import datafile=text1 out=salesource 
dbms=dlm replace;
delimiter=',';
Run;

/* Transformations */
/* Clean the data */

Data Salesource;
Modify Salesource;
if sale=. then remove;
Run;

/* Transformations for Dimension data */
Proc sort data= Salesource
out=prddim (keep=prdcode prdname) nodupkey;
by prdcode prdname;
Run;

/* Generate Surrogate key values */
Data Prddimfinal;
Set prddim;
Retain Prdkey 0;
Prdkey= Prdkey+1;
Run;
/* Loading into Dimension  table */
Proc append base=mdm. Product_details 
data=prddimfinal force;
run;

/* Transformations for Fact data */

Proc sql;
create view salesfact as
select p.prdkey, s.month,
s.sale from salesource as s, 
prddimfinal as P
where s.prdcode=p.prdcode;
Quit;

/* Loading into fact table */
Proc append base=mdm.Sales_information 
data=salesfact force;
run;

*********************************************

3. Control the data loading in one fact table using Multiple dimension table.


Target datasets:
Dimension tables:
Table1: Customers
Variables: 	Custno		Char
		Name		Char(15)
		Phoneno	Num
		Custkey	Num
Table2: Branchs
Variables: 	Bchcode	Char
		Location	Char(10)
		Bchkey	Num

Table3: Products
Variables: 	Prdcode	Char
		Prdname	Char
		Prdmodel	Char
		Prdkey		Num
Table4: Dates
Variables: 	Date 	Num format=ddmmyy10.


Fact Table: Salesdata2013
Variables:	Custkey	Num	
		Bchkey	Num
		Prdkey		Num
		Orderdate	Num format=ddmmyy10. 
		Deliverydate	Num format=ddmmyy10.
		invoicedate	Num format=ddmmyy10. 
		Quantity	Num

ER Diagram: 


/* Design Null datasets */


Libname MDM 'E:\SAS\clinical\Lib5';

/* Create Dimension Tables */

Proc sql;
create table Mdm.customers (
Custkey num,
Custno char,
Name char(15),
Phoneno num,
constraint Pk1 Primary key (Custkey));
Quit;

Proc sql;
create table Mdm.Branchs(
Bchkey num,
Bchcode char,
Location char(10),
constraint Pk2 Primary key (Bchkey));
Quit;

Proc sql;
create table Mdm.Products(
Prdkey num,Prdcode char,Prdname char,Prdmodel char,
constraint Pk3 Primary key (Prdkey));
Quit;

Proc sql;
create table Mdm.Dates(
Date num Format=ddmmyy10.,
constraint Pk4 Primary key (date));
Quit;

/* Fact Table */
Proc sql;
create table Mdm.Salesdata2013(
Custkey num,
Bchkey num, 
Prdkey num,
Orderdate num Format=ddmmyy10., 
invoicedate num Format=ddmmyy10.,
Deliverydate num Format=ddmmyy10.,
Quantity num,
Constraint Fk1 foreign key(Custkey) 
References Mdm.customers,
Constraint Fk2 foreign key(Bchkey) 
References Mdm.Branchs,
Constraint Fk3 foreign key(Prdkey) 
References Mdm.Products,
Constraint Fk4 foreign key(Orderdate) 
References Mdm.Dates, 
Constraint Fk5 foreign key(invoicedate) 
References Mdm.Dates, 
Constraint Fk6 foreign key(Deliverydate) 
References Mdm.Dates
);
Quit;

/* Check tables */
Proc sql;
Describe table 
Mdm.customers, 
Mdm.Branchs, 
Mdm.Products,
Mdm.Dates;
Quit;

/* ETL Process */
/* Extraction */

Filename file1 ' E:\SAS\source\Newdata-ETL\CustomerList.txt';
Filename file2 ' E:\SAS\source\Newdata-ETL\BranchList.txt';
Filename file3 ' E:\SAS\source\Newdata-ETL\ProductList.txt'; 
Filename file4 ' E:\SAS\source\Newdata-ETL\PRODUCTSALES2013.xls';


Proc import datafile=file1 out=cust_source dbms=dlm replace;
Delimiter=',';
Run;

Proc import datafile=file2 out=Bch_source dbms=dlm replace;
Delimiter=',';
Run;
Proc import datafile=file3 out=Prd_source dbms=dlm replace;
Delimiter=',';
Run;

Proc import datafile=file4 out=Sales2013 dbms=excel replace;
Sheet='Sheet1$';
Run;


/*  Transformations */
/*  Transformations for Dimension Data */

Data Cust_Target;
Set Cust_source;
Custkey+1;
Run;

Data Bch_Target;
Set Bch_source;
Bchkey+1;
Run;

Data Prd_Target;
Set Prd_source;
Prdkey+1;
Run;


data dates_target;
do date='01jan2013'd to '31dec2013'd by 1 ;
output;
end;
format date ddmmyy10.;
run;

/*
Mdm.customers, 
Mdm.Branchs, 
Mdm.Products,
Mdm.Dates;  */

/* Loading to Dimension tables */

Proc append base=Mdm.customers 
data=cust_target force;
Run;

Proc append base=Mdm.Branchs 
data=Bch_target force;
Run;

Proc append base=Mdm.Products 
data=Prd_target force;
Run;

Proc append base=Mdm.dates 
data=dates_target force;
Run;


/*  Transformations for Fact Data */

proc sql;
create view salesview2013 as
select c.custkey,
b.bchkey,
p.prdkey,
s.Orderdate,
s.invoicedate,
s.deliverydate,
s.quantity
from  Cust_target as c,
Bch_target as B,
Prd_target as p,
Sales2013 as S
where s.custno=c.custno and
s.bchcode=b.bchcode and
s.prdcode=p.prdcode ;
Quit;

/* Load the Fact Table */

Proc append base=Mdm.Salesdata2013 
data= salesview2013  force;
Run;

***************************************

Build warehouse system for collection of part of the data for analysis.

Dimension datasets: 


Dimension tables:
Table1: Cust_Details
Variables: 	Custno		Char
		Custkey	Num
Table2: Branch_Details
Variables: 	Bchcode	Char
		Bchkey	Num

Table3: Product_Details
Variables: 	Prdcode	Char
		Prdkey		Num


Fact Table: Sales_information
Variables:	Custkey	Num	
		Bchkey	Num
		Prdkey		Num
		Orderdate	Num format=ddmmyy10. 
		Deliverydate	Num format=ddmmyy10.
		invoicedate	Num format=ddmmyy10.
		Quantity	Num

 


/* Create Library */

Libname Mdw 'E:\Market-Dw';

/* Create null datasets */
/* Create Dimension Tables */

Proc sql;
create table Mdw.cust_details (
Custno char,
Custkey num Primary key
);
Quit;

Proc sql;
create table Mdw.Branch_details(
Bchkey num Primary key,
Bchcode char
);
Quit;

Proc sql;
create table Mdw.Product_details(
Prdkey num Primary key,
Prdcode char
);
Quit;
/* Fact Table */
Proc sql;
create table Mdw.Sales_information(
Custkey num References Mdw.cust_details,
Bchkey num References Mdw.Branch_details, 
Prdkey num References Mdw.Product_details,
Orderdate num Format=ddmmyy10., 
invoicedate num Format=ddmmyy10.,
Deliverydate num Format=ddmmyy10.,
Quantity num
);
Quit;

/* Check tables */
Dm log 'Clear';t44d

Proc sql;
Describe table 
Mdw.cust_details, 
Mdw.Branch_details, 
Mdw.Product_details,
Mdw.Sales_information;
Quit;


/* ETL Process */
/* Extraction */

Filename file5 'E:\SAS\source\Newdata-ETL\Analysis\customers.txt';

Filename file6 'E:\SAS\source\Newdata-ETL\Analysis\branchs.txt'; 
Filename file7 'E:\SAS\source\Newdata-ETL\Analysis\products.txt';

Proc import datafile=file5 out=custsource 
dbms=dlm replace;
run;

Proc import datafile=file6 out=branchsource 
dbms=dlm replace;
run;

Proc import datafile=file7 out=productsource 
dbms=dlm replace;
run;

/* Transformations for Dimension tables */

proc sql;
create view cust_targ as 
select t.custkey, 
s.custno from
cust_target as t,
custsource as s where 
t.custno= s.custno;
quit;

Proc sql;
create view bch_targ as 
select t.bchkey, 
s.bchcode from
bch_target as t,
branchsource as s where
t.bchcode= s.bchcode;
Quit;

Proc sql;
create view prd_targ as 
select t.prdkey, 
s.prdcode from
prd_target as t,
productsource as s where
t.prdcode= s.prdcode;
Quit;

/* Load the Dimension Tables */

Proc append base=Mdw.cust_details 
data= cust_targ  force;
Run;

Proc append base=Mdw.branch_details 
data= bch_targ  force;
Run;

Proc append base=Mdw.product_details 
data= prd_targ  force;
Run;

/* Load the Fact Table */

Proc append base=Mdw.Sales_information 
data= mdm.salesdata2013  force;
Run;


****************************************************


Analysis and report: 

To report total goods by customer-wise:

proc sql;
select c.custno, Sum(quantity)  as Ts 'Total Goods', Mean(Quantity) as Ag 'Average Goods' from 
Mdw.cust_details as c, 
mdw.sales_information as s where 
c.custkey=s.custkey 
group by custno;
Quit;


DW Concepts:
DW System can be built by integration of datamarts.

Data Mart: It Contains only one subject information or only one kind of information.

Data Marts are combination of Dimension and fact tables.

Dimension table: It Contains only Unique values.

Fact table: It contains facts or measurements.

Control the data loading in fact table depending upon the dimension table.

Data Marts can be designed using two Schemas.

1. Star Schema
2. Snowflake Schema


1. Star Schema: Here, one fact table surrounded by the many dimension tables.

 


Star schema is one of the normalization structure and will be taking less processing time  for query process(Loading and reading).

Normalization means maintain the data meaningful, understanding format with relation.


2. Snowflake Schema: Here, one fact table surrounded by the many dimension tables and these dimension tables are surrounded by some other dimension tables.

 


Snowflake schema is highly normalization structure and will be taken more processing time for query process.

Here, Data quality will be increased compared to star schema.

Data warehousing system can be built using two methods.

1. Imon (1980)
2. Kimboll(1990)

1. Imon (1980): First build Data warehouse system next build data marts from the data warehouse system.
 





2. Kimboll(1990): First build data marts from the Source files, next build data warehouse system.

 

OLTP system (Online Transaction Process): It Contains recently existed data in detailed format.


Legacy system: It contains historical data in detailed format.
Example: Fact files, MIS(Management information systems) and SAS.

ERP System (Enterprise Resource Planning): It contains Business process related data like Oracle financial, Peoplesoft, SAP and SAS. 

Dw System: It contains historicl data as well as recently existed data in detailed format.

OLAP System(Online Analytical Process): It contains data in aggregate format or summarized format.


 

Data Warehouse characteristics and properties:

1. Subject oriented
2. Integrated
3. Time variant
4. Non-volatile

1. Subject oriented: Contains only one kind of information.

2. Integrated: Integrate the data from multiple sources.

3. Time variant: Loading the data according to time.

4. Non-volatile: Once the data is inserted into DW system, we can not update the data.
**************************************************

Index: Dynamically access the data from the tables.
Index is the address of the data. They store the data in different address or buffers according to categorical values in the variables.

Indices are three types.

1. Simple Index
2. Composite Index
3. Unique Index

1. Simple Index: Assign for only one variable.
In simple index, index name is same as the variable name.

2. Composite Index: Assign index for group of variables.

Assign simple Index...

Create index statement: Assigns the index.

Create Index <Index name> on <Table name> (<variable>);


/* Create null dataset */
Proc sql;
create table Dm(Subjid num, Age num, Gender Char);
Quit;

/* Assign simple index */

Proc sql;
Create Index Gender on Dm(gender);
Quit;

/* Check */
Dm log 'Clear';

Proc sql;
Describe table Dm;
Quit;

Assign composite Index...
/* Create null dataset */
Proc sql;
create table Customers(
Custno char, 
Bchcode char,
Prdcode char,
Month num,
goods num
);
Quit;

/* Assign composite index */

Proc sql;
Create Index CBP on Customers(Custno, Bchcode, Prdcode);
Quit;


/* Check */
Dm log 'Clear';

Proc sql;
Describe table Customers;
Quit;

 



Delete the Index:

Drop Index <Index name> from <table name>;

/* Trace out index name */

Proc sql;
Describe table Customers;
Quit;

/* Drop Index */
proc sql;
drop index cbp from Customers;
Quit;
/* check */
Proc sql;
Describe table Customers;
Quit;

3. Unique Index: Is one of the simple index and loading the data without duplicate data values.

Proc sql;
create table emp1(eid num unique, des char);
Quit;

Proc sql;
create table emp2(eid num, des char);
create unique index eid on emp2(eid);
Quit;
/* check */
Proc sql;
Describe table emp1,emp2;
Quit;


Note : If you call the unique constraint , then sas system backend generates unique index.

Managing data from external databases.........

like Oracle
Access
SQL Server

……………………….PASS THROUGH FACILITY(PTF):………………….

Run the SQL features and query process for external database tables from SAS Environment.

Applications:  

Create the table
Insert the data
Update the data
Modify the table
Delete the data
Drop the table
Create views
Drop the views
Report the data
Import the data

Feature offered in Base SAS/Access.

PTF Applications require Base and SAS/Access product features in SAS Tool.


Connect to Statement: Build connectivity from SAS to External Source.

Disconnect Statement: Drop the connectivity from External Source.

Execute Statement: Execute Sql Statements in external sources.

Proc sql;
Connect to <dbms> (<connection options>);
Execute (<Sql Statements>) by <dbms>;
Disconnect from <dbms>;
Quit;

To manage Oracle Database by the PTF Applications:

Oracle versions:
Oracle 8i
Oracle 9i
Oracle 10g
Oracle 11g
Oracle 12c


Oracle is one of the database product offered by the oracle corporation.


Oracle connectivity requirements:
Username
Password
Path/Host String/TNS Service Name/Global Database Name.

Data Types for Oracle:
Number
Number (w,d)- number with width and decimal points.
Char (1-2000)
varchar (1-4000)

 





Connectivity options: 
User: scott / srini
Password: tiger / taurus
path : sas /orcl

versions -- Path
till 9i --  Ora
10g/11g --  orcl

Create a table and insert the data:


proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
create table Employ 
( Eid number, des Char(10), Salary number (10,2) )
) by oracle;
execute ( 
insert into Employ 
values (101, 'Tester', 23450.45)
) by oracle;
execute ( 
insert into Employ 
values (102, 'Progmer', 28650.65)
) by oracle;
execute ( 
insert into Employ 
values (103, 'Analyst', 33850.85)
) by oracle;
execute ( 
insert into Employ 
values (104, 'Tester', 43150.95)
) by oracle;
execute ( 
commit 
) by oracle;
disconnect from oracle;
quit;


Run the updations conditional basis....

/* Apply the conditions for old variable */ 

proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
Update Employ set salary=salary +
case when des='Tester' then 10000
when des='Progmer' then 20000
else 30000 end
) by oracle;
disconnect from oracle;
quit;

Note:
case when then statement feature is available in PTF applications from SAS v9.2 onwards.


Modify the table:
Adding new variables:

/* Apply the conditions for new variable */
proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
Alter table Employ add 
newsalary number(10,2)
) by oracle;
execute ( 
Update Employ set Newsalary=salary +
case when des='Tester' then 10000
when des='Progmer' then 20000
else 30000 end
) by oracle;
disconnect from oracle;
quit;


Drop the variables:

/* Drop the variables */
proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
Alter table Employ drop column
salary
) by oracle;
disconnect from oracle;
quit;

Delete the data From the table: 

/* Remove the data */
proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
delete from employ
) by oracle;
disconnect from oracle;
quit;

/* Drop the table */

proc sql;
connect to oracle (user=srini password=taurus path='orcl');
execute ( 
drop table employ
) by oracle;
disconnect from oracle;
quit;


Toad: It is a third party tool handles the oracle database by the menu options.

Create null datasets in oracle with constraints.
Constraints in oracle are Unique, not null, Check, Primary key, Foreign key.

User: rawdata
Password : rawdata
path: sas

Proc sql;
connect to oracle (user= rawdata password= rawdata path='orcl');
execute(
create table demo (
subid number unique, 
age number constraint nt1 not null ,
gender char(8) check(gender='M')
)
)by oracle;
disconnect from oracle;
quit;

Verify the constraints existed or not

In SQL Syntax, 

Describe DEMO;
************************************
select * from user_constraints 
where table_name='DEMO';
It Reports 
User	Integrity name	Table	Constraint type
*************************************************
select * from user_cons_columns
where table_name='DEMO';
It Reports 
User	Integrity name	Table	variable name
*************************************************


ER Diagram:

a


/* Create Dimension table */

Proc sql;
connect to oracle (user= rawdata password= rawdata path='orcl');
execute(
create table dm (
subid number constraint pk1 Primary key, 
age number,
gender char(8)
)
)by oracle;
disconnect from oracle;
quit;

/* Create Fact table */

Proc sql;
connect to oracle (user= rawdata password= rawdata path='orcl');
execute(
create table Mh (
subid number references Dm, 
Visit char(6),
Dose char(10)
)
)by oracle;
disconnect from oracle;
quit;


Proc sql;
connect to oracle (user= rawdata password= rawdata path='orcl');
execute(
create table Ae(
subid number constraint fk1 references Dm, 
Visit char(6),
Aeterm char(10)
)
)by oracle;
disconnect from oracle;
quit;


Assign Constraints for existed tables: 

Proc sql;
connect to oracle (user= srini password=taurus 
path='orcl');
execute(
Alter table employ add 
constraint Uk1  unique(eid)
)by oracle;
execute(
Alter table employ add 
constraint Nt2  not null(des)
)by oracle;
disconnect from oracle;
quit;

Drop Constraints for existed tables: 

Proc sql;
connect to oracle (user= srini password=taurus 
path='orcl');
execute(
Alter table employ drop
constraint Uk1  
)by oracle;
execute(
Alter table employ drop
constraint Nt2  
)by oracle;
disconnect from oracle;
quit;

Generate Report from oracle without creating datasets:


 


User: Srini
password=taurus
path=orcl

Detailed report:

Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select * from customers);
disconnect from oracle;
quit;

 

Report part of the data in sorting order:

Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select custno, month, goods from customers
where custno='C001' order by month desc);
disconnect from oracle;
quit;

Generate Summary Report:

Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select custno, 
count(custno) as No_of, 
sum(goods) as Total_goods, 
avg(goods) as avg_goods, 
max(goods) as max_goods,
min(goods) as min_goods 
from customers
order by custno);
disconnect from oracle;
quit;

Adding the tables for reporting using operators: 

Operators :

Union all
Union
Intersect
Minus

/* All values in both tables in sequential order */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select * from plans_2008
union all 
select * from plans_2009
);
disconnect from oracle;
quit;


/* matching common values */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(
select pcode, plan, 'run in 2008-09' as message  from plans_2008
intersect
select pcode, plan, 'run in 2008-09' as message  from plans_2009
);
disconnect from oracle;
quit; 

/* non-matching values */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(
select pcode, plan, 'run in 2008' as message  from plans_2008
minus
select pcode, plan, 'run in 2008' as message  from plans_2009
);
disconnect from oracle;
quit; 


Joins:

Simple Join
Inner join
Outer Join
Sub join

Tables in oracle: Ae, Adr.
Variable: Pid 

/* Simple Join */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select * from ae, adr where ae.pid=adr.pid);
disconnect from oracle;
quit; 

/* Simple Join using table alias */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select a1.pid, a1.aetype, a2.adrtype  from ae a1, adr a2 where a1.pid=a2.pid);
disconnect from oracle;
quit; 

In above application, a1, a2 are table alias.

/* Inner Join */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select * from ae inner join adr on ae.pid=adr.pid);
disconnect from oracle;
quit; 

/* Left Join */
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
select * from connection to oracle
(select * from ae left join adr on ae.pid=adr.pid);
disconnect from oracle;
quit; 

Import data from Oracle to SAS: 

Within the application, before select statements, we have to use create statement and load in dataset or view.

Note: These views are sql views, but created from external tables.

/* Import data from Oracle to SAS */ 
Proc sql;
connect to oracle (user=srini password=taurus path='orcl');
create table advents as
select * from connection to oracle
(select * from ae);
disconnect from oracle;
quit; 

Load The Oracle database from SAS environment:

We can load the data from SAS Dataset to Oracle database tables by using DBLoad Procedure.

proc dbload dbms=oracle data=<dataset name> ; 
     path  = '<TNS name>'; 
     user  = '<user name>'; 
     pw    = '<password>'; 
     table = <target DB Table>; 
     commit= <no. of possible records>; 
     limit = 0; 
     load; 
run;


*******************************************************


To manage excel file by the PTF applications:

Create sheet
insert the data
update the data
Report the data
import the data


Create sheet & insert the data:


Proc sql;
connect to excel (path='E:\customers.xls');
Execute (Create Table employ( Eid int, 
Des Char,
salary decimal)) by excel;
Execute (insert into employ values
(101, 'Tester', 2300.25)) by excel;
Execute (insert into employ values
(102, 'Progmer', 2900.85)) by excel;
Execute (insert into employ values
(103, 'Manager', 2700.75)) by excel;
disconnect from excel;
quit;


Update the values in excel:


Proc sql;
connect to excel (path='E:\customers.xls');
Execute (Update employ set salary=salary+2000)
by excel;
disconnect from excel;
quit;

Report the data from excel sheets without creating datasets:

Proc sql;
connect to excel (path='E:\sas\source\xls\data1.xls');
select * from connection to excel
(select * from [demo1$]);
disconnect from excel;
quit;

Note :
Excel default length for character is 60 characters. that is why output contains more gaps after each character variable.

Read part of the data in sorting order:

Proc sql;
connect to excel (path='E:\sas\source\xls\data1.xls');
select * from connection to excel
(select name, sex, age from [demo1$]
where sex='M' order by age Desc);
disconnect from excel;
quit;

Generate Summary report:

Proc sql;
connect to excel (path='E:\sas\source\xls\data1.xls');
select * from connection to excel
(select sex, count(sex) as No_of, 
avg(age) as avg_age, Max(age) as Max_age,
Min(age) as Min_age
from [demo1$]
Group by sex);
disconnect from excel;
quit;

In excel, data is available without variable names

Header option:
Similar nature of getnames statements.

Header=yes/no. 

Default value is Yes.

Proc sql;
connect to excel (path='E:\sas\source\xls\data1.xls' Header=No);
select * from connection to excel
(select * from [class$]);
disconnect from excel;
quit;


Adding the sheet:

Proc sql;
connect to excel (path='E:\sas\source\xls\Newdata.xls'); 
select * from connection to excel
(select * from [sheet2$]
Union all
select * from [sheet1$]);
disconnect from excel;
quit;

Join the sheets:
Proc sql;
connect to excel (path='E:\sas\source\xls\Newdata.xls'); 
select * from connection to excel
(select * from [sheet3$] s1, [sheet4$] s2
where s1.prdcode=s2.prdcode);
disconnect from excel;
quit;

Note: Here, we can use simple, inner, and outer joins from SAS v9.2 onwards.
SAS v9.0 Supports only simple joins.


Import data from excel to sas and load in dataset or view.


Proc sql;
connect to excel (path='E:\sas\source\xls\newdata.xls');
Create table Products as 
select * from connection to excel
(select * from [sheet3$]);
disconnect from excel;
quit;

DBload Procedure:

Loading the data into database tables.
we can load the data into new tables or Existed tables.

Loading the data into new tables:

Proc dbload data=sashelp.class dbms=oracle;
user=rawdata;
password='rawdata';
Path='orcl';
Table=Demo1;
load;
commit=2;
Run;

Load statement: Loading the data into database tables.

Commit statement: Saves the data into database tables according to user requirements.

If commit statement is not used in this process, data will be saved in the database only when the last record load is completed.

Note:
If the commit number is very low, the data load is safe, but takes more processing time.
If the commit number is higher, the data load is not safe, but takes less processing time.

Note: Oracle variable names can be given upto 8 characters in table and upto 32 characters in report. except this rule, all rules are same with SAS.


Loading part of the data into oracle tables:

Proc dbload data=sashelp.class(keep=name age where =(age>=14)) dbms=oracle;
user=rawdata;
password='rawdata';
Path='orcl';
Table=Demo2;
load;
commit=2;
Run;


Loading the data into existed tables:
Append option: Append the data into existed database tables.

ER Diagram:
 

/* Design Datamarts */
/* Create Dimension tables */
Proc sql;
connect to oracle (user=rawdata password=' rawdata' path='orcl');
execute(
create table customers(
Custno char(8), 
custkey number Primary key
)
) By Oracle;
disconnect from oracle;
quit; 


Proc sql;
connect to oracle (user=rawdata password=' rawdata' path='orcl');
execute(
create table Branchs(
Bchcode char(8), 
Bchkey number Primary key
)
) By Oracle;
disconnect from oracle;
quit;


Proc sql;
connect to oracle (user=rawdata password=' rawdata' path='orcl');
execute(
create table Products(
Prdcode char(8), 
Prdkey number Primary key
)
) By Oracle;
disconnect from oracle;
quit;
	

Proc sql;
connect to oracle (user=rawdata password=' rawdata' path='orcl');
execute(
create table Time(
Year number Primary key
)
) By Oracle;
disconnect from oracle;
quit;

/* Create Fact table */

Proc sql;
connect to oracle (user=rawdata password=' rawdata' path='orcl');
execute(
create table Salesdata( Custkey references customers, 
bchkey references branchs, prdkey references products,
Year number references Time, price number (8,2), quantity number
)
) By Oracle;
disconnect from oracle;
quit;

/* ETL Process */
/* Extraction */
Proc import datafile='E:\sas\source\ETL-new\Customers.txt' Out=Custsource dbms=dlm replace;
delimiter=',';
Run;
Proc import datafile='E:\sas\source\ETL-new\Branchs.txt' Out=Bchsource dbms=dlm replace;
delimiter=',';
Run;

Proc import datafile='E:\sas\source\ETL-new\Products.txt' Out=Prdsource dbms=dlm replace;
delimiter=',';
Run;

Data Tsource;
infile 'E:\sas\source\ETL-new\Time.txt';
input Year;
Run;
Proc import datafile='E:\sas\source\ETL-new\Sales.xls' Out=Salesfact dbms=Excel replace;
Sheet='Sheet3$';
Run;

/* Loading */
Proc dbload data=Custsource dbms=oracle append;
user=rawdata;
password='rawdata';
Path='orcl';
Table=Customers;
load;
commit=2;
Run;
Proc dbload data=Bchsource dbms=oracle append;
user=rawdata;
password='rawdata';
Path='orcl';
Table=Branchs;
load;
commit=2;
Run;
Proc dbload data=Prdsource dbms=oracle append;
user=rawdata;
password='rawdata';
Path='orcl';
Table=Products;
load;
commit=2;
Run;
Proc dbload data=tsource dbms=oracle append;
user=rawdata;
password='rawdata';
Path='orcl';
Table=time;
load;
commit=2;
Run;
Proc dbload data=Salesfact dbms=oracle append;
user=rawdata;
password='rawdata';
Path='orcl';
Table=salesdata;
load;
commit=2;
Run;

Datasets Procedure:

Datasets procedure is part of the Base SAS.

Using this Procedure, we can do...
Change the name of the Sas files
Exchange the data between the Sas files
copy the sas files between the libraries
Append the data
Report descriptive information for datasets
Modify the datasets
delete the datasets

Change statement: Change name of the sas files. 

Proc datasets library=work;
Change custsource=Customers;
Quit; 
Proc datasets library=work;
Change Bchsourcel=Branchs;
Quit;

If library option is not mentioned, then sas default interacts with work library.

Exchange statement:
Exchange the data between the sas files.

Exchange process between the datasets or between the views and not between view and dataset or vice versa.


Both Sas files must be available in same library.

Proc datasets library=work;
exchange Customers=Branchs;
Quit;


Copy statement: Copy the sas files between the libraries.

Copy in=<source> out=<target>  <options>;

 


/* Create Master Library */
Libname master 'E:\sas\source\sasfiles';

/* copy sas files */
proc datasets ;
copy in=master out=work;
quit;

Specify member type to control copy process:

memtype=all/data/cat/view;

select statement: enable to specify name of the required sas files.

Exclude statement: enable to specify name of the non-required sas files.

/* copy selected sas files */
proc datasets ;
copy in=master out=work memtype=data;
select ae customers dm;
quit;

/* copy sas files with exclude */
proc datasets ;
copy in=master out=work memtype=data;
exclude ae customers dm;
quit;

Copy procedure:
Copy the sas files between the libraries.

/* copy sas files */
proc copy in=master out=work ;
quit;

/* copy sas files */
proc copy in=master out=work memtype=data;
quit;

/* copy selected sas files */
proc copy in=master out=work memtype=data;
select ae customers dm;
quit;

/* copy sas files with exclude */
proc copy in=master out=work memtype=data;
exclude ae customers dm;
quit;

Contents statements:
Report descriptive information for sas files.

proc datasets library=master ;
contents data=customers;
quit;

Append statement:
append the data. 

Data Emp1;
input Eid Des $ Salary ;
cards;
101	Tester	2300
102	Analyst	3400
103	Progmer	5600
;
Data Emp2;
input Eid Des $ Salary ;
cards;
201 progmer	4300
202	Analyst	2400
203	Tester 	8500
;

Proc datasets;
append base=emp1 data=emp2;
quit;

Statement	Procedure
Copy statement  
Contents Statement
Append statement	Copy Procedure 
Contents Procedure
Append Procedure
 Statement require datasets procedure features. Maybe some features not available in Datasets procedure, statements will not work.
	 Procedure features have full length support.

Modify the datasets:
Assign or delete labels and formats.
Assign or delete constraints.

Assign the labels and formats:

/* Old applications */
Data Emp1;
set emp1;
label eid='Employ Id'
	Salary='Salary in dollars';
format salary dollar10.;
Run;

/* New applications */
Proc datasets library=work;
Modify emp2;
label eid='Employ Id'
	Salary='Salary in dollars';
format salary dollar10.;
Quit;

Delete the labels and formats:

/* Old applications */
Data Emp1;
set emp1;
label eid=' '
	Salary= ' ';
format salary ;
Run;

/* New applications */
Proc datasets library=work;
Modify emp2;
label eid=' '
	Salary= ' ';
format salary ;
Quit;
Assign constraints:
Constraints are Unique, not null, check, primary and foreign key.

ic create statement: assigns the constraints.

Ic create <integrity name> =Type(<variable>);

/* Create null dataset*/
Data Employ;
length eid 4 Des $ 10 Salary 7;
Delete;
Run;

/* Assign constraints */
Proc datasets;
modify employ;
ic create uk1=unique(eid);
ic create nt1=not null(des);
ic create ck1=check(where=(salary>0));
Quit;

Proc datasets library=work;
contents data=employ;
Quit;

Delete the constraints:

ic delete statement: deletes the constraints.

Ic delete  <integrity name>;
or 
Ic delete _all_;

Proc datasets;
modify employ;
Ic delete _all_;
Quit;
delete statement: deletes the sas files from the sas.

save statement: save the sas files.

Proc datasets;
delete emp1 emp2;
Quit;

delete the datasets
DELETE statement:
Use the DELETE statement to delete one or more data sets from a SAS data library. If you want to delete more than one data set, then simply list the names after the DELETE keyword with a blank space between the names.

proc datasets library=<libref>;
delete <dataset name> ;
run;

*******************************************






Format Procedure: 

It is also one of the Base SAS Component.

Create user defined informats and formats

Invalue statement: Generates informats.

Data Conversions by the informats: 
1. Character to character
2. Character to numeric 
3. numeric to numeric

Value statement: Generates formats.

Data Conversions by the formats: 
1. Character to character
2. numeric to character

Functions:
Input Function(): 

It requires informat techniques and convert any data value in character or numeric format.

input(<variable>,<informat Tech>)

Put Function(): 

It requires format techniques and convert any data value only in character format.

put(<variable>,<format Tech>)

These functions can be used in dataset block or procedure block(proc print, proc sql, proc report).

Rules for informat and format names:

Name can be given upto 32 characters. Start with letter or underscore.

But, if it is character to character conversion, Then Start with $ Symbol.
We can not use any special character except underscore.
We can use number in the middle of the name but not in start or end of the name.

Note: User defined informats and formats default load in work library in formats catalog.

Character to character and numeric to character conversions: 

/* Source data */

pid		sex		age		race		color
P001		1		18		As		w
P002		2		23		Af		b
P003		1		25		As		w
P004		2		28		Af		w

data conversions:

Sex:
1-Male
2-Female

Race:
As-Asian
Af-African

Color:
b-Black
w-White



/* Extraction */
filename file1 'E:\SAS\source\xls\data.xls';

Proc import datafile=file1 Out=Dmsource dbms=excel replace ;
sheet='sheet4$';
Run;

/* Transformations */
/* Design Informats and formats */
Proc format ;
Value sx 1='Male' 
		2 ='Female';
Value $rc 'As'='Asian'
		'Af'='African';
invalue $cr 'w'='White'
		   'b'='Black';
Run ;

Data  Dmtarget;
Set Dmsource;
S=put(Sex, sx.);
R=put(race, $rc.);
C=input(color, $cr.);
Drop sex race color;
Rename s=sex r=race c=color;
Run;

Proc print data= Dmtarget;
Run;

numeric to numeric and Character to numeric conversions:


pid		visit	dose
P001		V1		1
P002		V1		2
P003		V1		3


Data Conversions:

Visit:
V1 - 1
V2 - 2
V3 - 3

Dose:
1 - 0.05
2 - 0.10
3 - 0.15

/* Extraction */
filename file1 'E:\SAS\source\xls\data.xls';

Proc import datafile=file1 Out=Mhsource dbms=excel replace ;
sheet='sheet5$';
Run;

/* Transformations */
/* Design Informats and formats */
Proc format ;
invalue vs 'V1'=1
		 'V2'=2
		 'V3'=3 ;
invalue ds  1=0.05
		2=0.10
		3=0.15;
run;

data mhtarget;
set mhsource;
v=input(visit, vs.);
d=input(dose, ds.);
drop visit dose;
rename v=Visit d=Dose;
run;

proc print data=mhtarget ;
run;

numeric to numeric conversions using Range for creation of new variable:


/* Source data */
Data Emp_salaries;
input Eid $ Salary Sale;
Cards;
E101	3000	540
E102	3200	420
E103	3400	240
E104	3600	320
E105	3800	420
E106	4000	540
E107	4200	400
E108	4400	600
E109	4600	540
E110	4800	420
E111	5000	240
E112	5200	320
E113	5400	420
E114	5600	540
E115	5800	400
;



Condition	Rating
Sale >=500	1
Sale >=350& Sale <500	2
Sale>200 & Sale <350	3
Sale <=200	4


/* Design informat */
Proc format;
invalue Rtn  	low-200 =4
			200<-350=3
			350<-<500=2
			500-high=1;
run;


Data Emp_rating;
Set emp_salaries;
Rating=input(sale, Rtn.);
Run;

Proc print Data= Emp_rating;
run;





Condition	Rating
Sale >=500	Very Good
Sale >=350& Sale <500	Good
Sale>200 & Sale <350	Average
Sale <=200	Poor


/* Design informat */
Proc format;
value Rtc  	low-200 ='Poor'
			200<-350='Average'
			350<-<500='Good'
			500-high='Very Good';
run;

Data Emp_rating;
Set emp_salaries;
Rating=put(sale, Rtc.);
Run;

Proc print Data= Emp_rating;
run;

Design the format for Reporting:
Changes not in Dataset, changes in output window only.

Investigator global assessment : Performed at the end of the Study.


/* Source Data */
Data Iga_Score;
input Subid Dose $ Score;
Cards;
101	L	1
102	L	0
103	L	2
104	M	0
105	M	1
106	M	1
107	H	0
108	H	3
109	H	1
;

Data Conversions:
For Dose:
L - Asp-05mg
M - Asp-10mg
H - Asp-15mg

For Score:
0 - clear
1 - near clear
2 - mild
3 - moderate

Proc format ;
Value $Ds 'L'='Asp-05mg'
		'M'='Asp-10mg'
		'H'='Asp-15mg';
Value Scr 0='Clear'
		1='Near Clear'
		2='Mild'
		3='Moderate';
Run;

/* Call formats for report */
Proc Print Data=Iga_Score;
Format Dose $ds. Score scr.;
Run;


/* Assign the formats permanently */
Data Iga_Score;
set Iga_Score;
Format Dose $ds. Score scr.;
Run;

Note:   
Put Function(): Changes the value frontend & backend when some thing is changed i.e. in dataset block & output window.

Format statement: Changes the value only in front end so it is only a kind of visibility in output window or report window.

Also in these cases, the formats catalog & dataset should be in same library(either system or user defined libraries).

Store the Formats in Required autocall library:

Library option:
Enables to specify library name for storage of formats catalogs.

FMTSearch():
It is a global option & specify the library name for calling of format catalogs.


/* Create library */
Libname Clinic 'E:\datasets';

/* Extraction */
Filename file2 'e:\sas\source\xls\data1.xls';

Proc import datafile=file2 out=clinic.dm(keep=name age sex)
dbms=excel replace;
Sheet='demo1$';
Run;

/* Design formats */
proc format library=clinic;
value $sx 'F'='Female'
			'M'='Male';
value agint 10 -12 = '10-12'
			13-15 = '13-15'
			16-18 = '16-18';
			Run; 

/* Using formats */
options fmtsearch=(clinic);

data clinic.dm;
set clinic.dm;
format sex $sx. age agint.;
run;

FMTLIB option:  It is a format option and trace out format catalogs to display values and value labels in table format.


Trace out the format catalogs for values and value labels:

/* collect format catalogs */
libname  user1 'E:\sas\source\sasfiles';

/* trace out format catalogs */
proc format library=user1 fmtlib;
select ag;
run;

/* trace out format catalogs */
proc format library=user1 fmtlib;
exclude ag;  /* rest all will be displayed */
run;


*************************************************

Picture Statement: Design the format for reporting. These formats can be called Templates.

Using this format, we can run numeric to character conversion for reporting.
Using picture formats, we join special characters as well as text within the value for reporting.

Design the formats for reporting amounts in Indian currency.

Data Finance;
Input Dgcode $ Investment;
Cards;
Anti-S	324234233
Anti-B	132342352
Anti-M	546452345
;

/* Design Formats */
Proc formats;
Picture Inr low-high ='00,00,00,000 Rs/-';
Run;

/* Report */
Proc Print data=Finance;
Format Investment inr.;
run;

Note: Within the picture format, 0 or 9 represents digits in data values.

Data Salesdata;
input Prdcode $ year sale;
cards;
P101	2006	234.2
P102	2006	134.1
P103	2007	330.1
P101	2007	210.3
P102	2007	340.4
;

Proc format;
picture smr low-high ='999.9 Millions';
Run;

Proc print data=Salesdata label;
label sale='Sale in Millions';
format sale smr.;
run;

******************************
Picture statement can't work with minus symbol in the values of the variable.

data pic;
input prdc $ amount;
cards;
P101	20000000
P102	-20000000
P103	-40000000
P104	60000000
P105	-60000000
;

proc format;
picture amt low-high="$ 000,000,000,000";
run;

proc print data=pic;
format amount amt.;
run;

******************************

Run the data conversions using system-defined informat and format techniques:
Convert the date values character To Numeric:

/* Extract the data from excel to Sas*/
Proc import datafile='e:\sas\source\xls\data.xls' 
out=Mhsource dbms=excel replace;

sheet='sheet6$';
Run;

Proc contents data=mhsource;
run;

/* Convert the date values character to numeric */
Data Mhtarget;
set mhsource;
S=input(sdate, ddmmyy10.);
E=input(edate, ddmmyy10.);
drop edate sdate;
rename S=Sdate E=Edate;
run;

/* Report */
Proc print data=mhtarget ;
format sdate edate ddmmyyd10.;
run;

**** Interview purpose *****

Convert date value numeric to character format:
Data Test;
input Sdate : date9.;
cards;
10May2003
19oct2005
21dec2009
;

Data Test1;
set Test;
Startdate=put(sdate, yymmddd10.);
Run;

Create date&time variable combination of date with time:

Data Treatment;
input Arm $ Sdate : date9. Stime : time8.;
format Sdate date9. Stime time8.;
cards;
Arm1	12feb2005	20:23:45
Arm2	20jun2005	10:12:21
Arm3	18dec2005	18:23:23
;

1. In this process, first convert date and time variables numeric to character.
2. next, concatenate date with time.
3. next convert dattime character to numeric.

Data Trt;
set Treatment;
s=put(sdate, date9.);
T=put(stime, time8.);
st= S || ':' || T;
Stn=input(st, datetime18.);
drop sdate stime s t st;
Rename stn=SDTime;
Run;
Proc print data=Trt;
format sdtime datetime18.;
run;


Data Test;
Input Var $;
cards;
2
34
567
89.321
;

Data Test1;
set Test;
var1=input (var, best12.);
run;

Proc print data=Test1;
run;

Convert numeric values as a character:

Data Test;
Input Var ;
cards;
2
34
567
89.321
;

Data Test1;
set Test;
var1=put (var, $10.);
run;

Proc print data=Test1;
run;


Transpose procedure:

Convert the data normalization to non-normalization (Vertical to horizontal) or non- normalization to normalization(horizontal to Vertical).

In normalization to non-normalization process, variable values convert as a variable column names(variable names), one variable values split into multiple variables as well as variable names converted as values.

In non-normalization to normalization process, column names convert as values, multiple variable values load in single variable.

Syntax:
Proc transpose data=<input dataset> out=<output dataset> <options>;
Id <variable>;
var <variables>;
by <variables>;
Run;

Id Statement: Enable to specify variable name, which variable name convert as column names.

Id variable  must  be character.
it can also be numeric, but while converting the values as column names, problem arises.
In these cases, SAS default takes underscore as a prefix before the numeric values and convert as column names.


ID Variable values will be converted to Variables.

Var statement: var statement is transpose statement, which variable we are using at var statement, those variables are transpose variables.
Var statement controls which variable values split into multiple variables as well as convert variables as values and multiple variable values stores in one variable.

Values of transpose variables are transposed for vertical to horizontal or horizontal to vertical.

By Statement: Enable to specify by variable name for processing variable.
Here by variables are the identification variables i.e. values may be repeated based on the number of transactions.
Example: Custno, Prdcode, Bchcode, Subid, Aeterm.


/* Source data */

Data Product_sales;
infile cards dsd;
input prdcode $ Month $ Sale;
Label Prdcode='Product Code'
Sale='Sale in Millions';
cards;
P101,M1,340
P101,M2,430
P101,M3,320
P101,M4,210
P101,M5,120
P101,M6,210
P102,M1,140
P102,M2,230
P102,M3,310
P102,M4,230
P102,M5,120
P102,M6,220
P103,M1,210
P103,M2,410
P103,M3,220
P103,M4,240
P103,M5,290
P103,M6,210
;


Template for Transpose:


Prdcode	Month
	Sale


Proc transpose data=product_sales out=sales_trans1;
id month;
var sale;
by prdcode;
Run;

Proc print data= sales_trans1;
run;

Transpose procedure default creates two new variables in output dataset.

1. _NAME_
2. _LABEL_


1. _NAME_ is a source variable and it contains transpose variable name as a value.

2. _LABEL_ It contains transpose variable label as a value.

Customization: 

Name option: Rename the source variable name (_NAME_).

Label option: Rename the _LABEL_.


Proc transpose data=product_sales out=sales_trans2 (drop=_name_) label = Information;
id month;
var sale;
by prdcode;
Run;

Proc print data= sales_trans2;
run;

To use numeric variable at Id statement:
In these cases, SAS default takes underscore as a prefix before the numeric values and convert as column names.

Prefix option: enable to specify required text as a prefix.

Data Product_sales;
infile cards dsd;
input prdcode $ Month Sale;
Label Prdcode='Product Code'
Sale='Sale in Millions';
cards;
P101,1,340
P101,2,430
P101,3,320
P101,4,210
P101,5,120
P101,6,210
P102,1,140
P102,2,230
P102,3,310
P102,4,230
P102,5,120
P102,6,220
P103,1,210
P103,2,410
P103,3,220
P103,4,240
P103,5,290
P103,6,210
;

Proc transpose data=product_sales out=sales_trans3 prefix=Month;
id month;
var sale;
by prdcode;
Run;

Proc print data= sales_trans3;
run;


Assign the format for Id variable:
If we assign the format for Id variable, then SAS default takes format values as column names.

Proc format ;
Value Mnc 1='Jan'
		2='Feb'
		3='Mar'
		4='Apr'
		5='May'
		6='Jun';
Run;


Proc transpose data=product_sales out=sales_trans4;
id month;
var sale;
by prdcode;
format Month mnc.;
Run;

Proc print data= sales_trans4;
run;

To use multiple transpose variables at var statement:

Data Mh_Ae;
infile cards dsd;
input Arm $ Subid Visit $ Dose $ Aeterm $;
Label subid='Unique Subject Id'
Visit='Study Visit'
Dose='Study Dose'
aeterm='Adverse event';
cards;
Arm1,101,Visit1,Asp-05mg,Headac
Arm1,102,Visit1,Asp-05mg,Vomting
Arm2,201,Visit1,Asp-10mg,Hairloss
Arm2,202,Visit1,Asp-10mg,Headac
Arm3,301,Visit1,Asp-15mg,fever
Arm3,302,Visit1,Asp-15mg,cold
Arm1,101,Visit2,Asp-05mg,fever
Arm1,102,Visit2,Asp-05mg,Vomting
Arm2,201,Visit2,Asp-10mg,cold
Arm2,202,Visit2,Asp-10mg,fever
Arm3,301,Visit2,Asp-15mg,Headac
Arm3,302,Visit2,Asp-15mg,Hairloss
Arm1,101,Visit3,Asp-05mg,Headac
Arm1,102,Visit3,Asp-05mg,Hairloss
Arm2,201,Visit3,Asp-10mg,Headac
Arm2,202,Visit3,Asp-10mg,Vomting
Arm3,301,Visit3,Asp-15mg,Hairloss
Arm3,302,Visit3,Asp-15mg,Headac
;


Proc sort data=mh_ae out=Mhaesort;
by subid;
run;

Proc transpose data= Mhaesort out=Mhaetrans(drop=_name_ )
Label=term;
id Visit;
var dose aeterm;
by subid;
Run;

Proc print data=mhaetrans;
run;

*************** Interview Purpose ************************
copy statement: Copy the variable from input dataset to output dataset without using in transpose process.
If we use copy statement in transpose process, then transpose result is disturbed.

*************** Interview Purpose  ||*****************

idlabel statement: enable to specify variable name which variable values convert as labels for id values. This statement is available from SAS v9.2 onwards.

/* Extract CRT for Dm from excel */

filename file1 'E:\SAS\source\SDTMIG.xls';

proc import datafile=file1 out=dmcrt dbms=excel replace;
sheet='dm$';
run;

/* Create null dataset */
proc transpose data=dmcrt out=dm(drop=_name_ _label_);
id variable;
var type;
idlabel label;
run;
/* Create null dataset */
proc transpose data=dmcrt out=dm(drop=_name_ _label_);
id variable;
var type;
idlabel label;
run;
DATA D;
INFILE CARDS DSD;
INPUT DOMAIN $ INVESTNAME $ VARIABLE $ LABELS:$15. VALUES $;
CARDS;
DM,ROBERT,STUDYID,STUDY ID,X001
DM,ROBERT,SITENO,SITE NUMBER,S1
DM,ROBERT,SUBID,UNIQUE SUBJECT ID,U501
DM,ROBERT,SEX,SEX,MALE
DM,REBORT,RACE,RACE,ASIAN
DM,SHANU,STUDYID,STUDY ID,X001
DM,SHNAU,SITENO,SITE NUMBER,S2
DM,SHANU,SUBID,UNIQUE SUBJECT ID,U102
DM,SHANU,SEX,SEX,FEMALE
DM,SHANU,RACE,RACE,ASIAN
;
proc sort data=d out=d;
by domain investname;
run;
proc transpose data=d out=ds;
id variable;
var values;
idlabel labels;
by domain investname;
run;
PROC PRINT;RUN;

/* delete records */
data dm;
set dm;
delete;
run;

convert the data non-normalization to normalization or horizontal to vertical or run the transpose without Id statement:

Data Salesdata;
input Prdcode $ m1-m6;
cards;
P101 230 240 340 510 650 421
P102 321 260 410 310 380 420
P103 410 421 531 250 298 365
;

Template for Transpose: 

Prdcode	Month	Sale
P101	M1	
P101	M2	
P101	M3	
P101	M4	
P101	M5	
P101	M6	



Proc transpose data=salesdata  out=salestrans(Rename=(col1=sale)) name=Month;
var m1-m6;
By prdcode;
run;

Proc print data=salestrans;
run;

Submit transpose procedure without any statement: 

Data Emp;
Input Eid Des $ Salary;
Cards;
101	Tester	2000
102	Progmer	3000
103	Analyst	4500
;

In these cases, sas default takes all numeric variables from the input dataset and run the transpose using var statement. 

Var statement is default transpose statement default transpose variables are numeric variables(_numeric_).

Proc transpose data=emp out=emptrans;
run;

/* Backend */

Proc transpose data=emp out=emptrans;
var _numeric_;
run;

****************************************


Rank Procedure (Base):

Generates Ranks.
Default ranking in ascending order. Means lowest values get first lines and highest values get the last lines.

syntax:
Proc rank data=<input dataset> out=<output dataset> <options>;
Var <variables for ranking>;
Ranks <variables for store ranks>;
By <variables>;
Run;

Var Statement: enable to specify variable name to generate ranks.
These variables must be numeric.

Ranks statement: enable to specify new variable name for storage of ranks.

By statement: enable to specify by variable name(grouping variable).

/* Source data */

data emp_sales;
infile cards dlm='&';
input bchcode $ Eid Jsale Fsale;
cards;
B1&101&120&130
B1&102&230&350
B1&103&430&320
B2&104&430&210
B2&105&520&420
B2&106&310&110
;

Proc Rank data=emp_sales out=emp_ranks1;
Var Jsale Fsale;
Ranks Jrank Frank;
Run;
Proc Print data= emp_ranks1;
Var Bchcode eid jsale jrank fsale frank;
Run;

Note: SAS assigns mean ranking when the values are equal. This process is controlled by the Ties option.

Ties option: It controls ranking process when the data values are equal.

Ties=Mean/low/high

Default is mean.

Descending option: Generate ranks in descending order. Means highest value gets the first rank and lowest value get the last rank.

Proc Rank data=emp_sales out=emp_ranks2 descending ties=high;
Var Jsale Fsale;
Ranks Jrank Frank;
Run;
Proc Print data= emp_ranks2;
Var Bchcode eid jsale jrank fsale frank;
Run;


*************** Interview questions *****************

Submit ranks procedure without ranks statement:
In these cases, SAS generates the ranks for required variables and stores in same variable.

So, values convert into ranks.

Proc Rank data=emp_sales out=emp_ranks3;
Var Jsale Fsale;
Run;

Proc Print data= emp_ranks3;
Run;

Submit ranks procedure without any statement:

In these cases, SAS default takes all numeric variables from the input dataset and generates ranks.

Proc Rank data=emp_sales out=emp_ranks4;
Run;

Proc Print data= emp_ranks4;
Run;

/* Back end */
Proc Rank data=emp_sales out=emp_ranks4;
Var _numeric_;
Run;

Proc Print data= emp_ranks4;
Run;
***********end of Interview scope**********************

Generate the ranks group-wise:

Proc Rank data=emp_sales out=emp_ranks5 
descending;
Var Jsale fsale;
Ranks jrank frank;
By bchcode;
Run;

Proc Print data= emp_ranks5;
Run;

Randomization: 
Choice of selection from group of elements.
jective of randomization is to avoid bias.

During the clinical trials, subject receives the treatment according to randomization to avoid potential bias.

Develop the application for randomization: 
Study population of 18 subjects split into 3 groups like 5mg, 10mg, and 15mg according to 1:1:1 ratio.

Ranuni function: It is a dataset function and generates random numbers between 0 to 1.
Syntax: 
Ranuni(seed);

/* Generate dummy values for subjects */
Data Subjects;
Do subid=101 to 118;
Output;
End;
Run;

/* Generate random numbers */
Data sub_random ;
Set subjects;
Rnumber=ranuni(33482394);
Run;

Proc print ;
Run; 
Proc rank data= sub_random out=sub_ranks groups=3;
Var rnumber;
Ranks rnum_ranks;
Run;
Proc print data= sub_ranks;
Run;

/* customization */
Proc format;
Value Grp 0= '05mg'
1='10mg'
2='15mg';
Run;

Proc print data= sub_ranks label;
Var subid rnum_ranks;
Format rnum_ranks grp.;
Label rnum_ranks='Gropus';
Run; 

                                                Arrays

Run same operation for multiple variables.
Array process can be used in dataset block or report procedure.

Syntax:
Array <name of array> (length of array) <data type> <list of variables>;

Array name can be given upto 8 characters. Length of the array according to list of variables(number of variables).

Arrays are two types.
1. One Dimension array
2. Two or multi Dimension array

1. One Dimension array: Run the process in column-wise.

2. Two or multi Dimension array: Run the process in column-wise and row-wise.

Perform the operations using one dimension array:

Here, operation is to replace the missing values in multiple variables.

*****************************************
Name of the Programmer: Akula Srinivas
Designation: Clinical SAS Programmer

*****************************************;

/* Source Data */

/* Replace Missing values in multiple variables */
Data Sales_replace;
Set salesdata;
Array apple (6) m1-m6;
Do i=1 to 6;
If apple(i)=. Then apple(i)=0;
End;
Drop I;
Run;

Proc print data= Sales_replace;
Run;

Perform the operation using _numeric_ :

Dim function: It requires array name as an argument and returns length of the array to control the loop process.

Data Sales_replace2;
Set salesdata;f
Array apple (*) m1-m6;
Do i=1 to dim(apple);
If apple(i)=. Then apple(i)=0;
End;
Drop I;
Run;
 
Proc print data= Sales_replace2;
Run;

*****************************************

***Clinical Term:
LOCF- Last Observation Carried Forward
Replace the missing values in data by the mean of non-missing values.

***Clinical Term;
*****************************************;


Data Sales_replace_mean;
Set salesdata;
Array apple (6) m1-m6;
Do i=1 to 6;
If apple(i)=. Then apple(i)=mean(of m1-m6);
End;
Drop I;
Run;
 
Proc print data= Sales_replace_mean;
Run;

Replace Missing values by the previous values:

This is called LOCF in clinical Trials. This process is adopted in clinical trial datasets like VS, LB.

Data Sales_replace_previous;
Set salesdata;
Array apple (6) m1-m6;
Do i=2 to 6;
If apple(i)=. Then apple(i)= apple(i-1);
End;
Drop I;
Run;
 
Proc print data=Sales_replace_previous;
Run;

Replace Missing values by the next values:

Data Sales_replace_Next;
Set salesdata;
Array apple (6) m1-m6;
Do i=1 to 5;
If apple(i)=. Then apple(i)= apple(i+1);
End;
Drop I;
Run;
 
Proc print data=Sales_replace_Next;
Run;

Replace Missing values by the standard values/Temporary values:

*******************************************************;
Some examples of Standard values in clinical domain:
Blood Sugar	120Mg/dl
Heart rate	72beats/min
DBP		80mmHg
SBP		120mmHg
*******************************************************;

101 1 HR 72
102 1 HR 70
103 1 HR 72
101 1 DBP 80
102 1 DBP 82
103 1 DBP  .
101 1 SBP 123
102 1 SBP 122
103 1 SBP 123


/*Extract source data */
Filename vs 'E:\sas\source\dlm\Vitalsigns.txt';

Data Vs;
Infile Vs;
Input Subid Visit Test $ Units;
Run;

/* Run transpose for array process */
Proc sort data=Vs out=Vssort;
By subid Visit;
Run;

Proc Transpose data=vssort out=vstrans(drop=_name_);
Id test;
Var units; 
By subid Visit;
Run;

Proc print data=vstrans;
Run;

/* Replace Missing values by the array process */
Data Vsreplace;
Set vstrans;
Array find(3) HR DBP SBP;
Array temp(3) _temporary_ (72 82 120);
Do i=1 to 3;
If find(i)=. Then find(i)=temp(i);
End;
Drop I;
Run;
Proc print data=vsreplace;
Run;

/* Convert data into original format */
Proc transpose datavsreplace out=vstarget (Rename =(col1=units)) name=test;
var HR DBP SBP;
by subid visit;
run;
Proc print data= vstarget;
Run;


Create new variables using arrays: 

/* Source data */
Data sharesdata;
Input prdcode $ Jsale Jprice Fsale Fprice Msale Mprice;
Cards;
P101	230	25.23	340	25.50	560	32
P102	340	45.60	450	48.90	420	50.23
P103	120	54.25	130	55.25	320	50.25
;

Task: Create Amount variable using sale and price for 3 variables.

Data Sharesfinal;
Set Sharesdata;
Array apple(3) Jsale Fsale Msale ;
Array Orange(3) Jprice Fprice Mprice;
Array Mango(3) Am_Jan Am_Feb Am_Mar;
Do i=1 to 3;
Mango(i)=Apple(i)* Orange(i);
End;
Drop I;
Run;

Proc print data= Sharesfinal;
Run;

Run the character operations using arrays:

/* Source Data */
Data Ae;
Input Subid Visit $ Aeterm $;
Cards;
101	Visit1	Headache
156	Visit1	Fever
190	Visit1	Cold
245	Visit1	Vomting
101	Visit2	Fever
134	Visit2	Hairloss
190	Visit2	Fever
256	Visit2	Cold
101	Visit3	Headache
109	Visit3	Rashes
178	Visit3	Cold
201	Visit3	Fever
;

/* Run Transpose  */
Proc sort data=Ae out=aesort;
By subid;
Run;

Proc transpose data=aesort out=aetrans
Name=Term;
Id visit;
Var aeterm;
By subid;
Run;
Proc print data= aetrans;
Run;

/* Replace Missing Values for understanding */
Data Aereplace;
Set Aetrans;
Array apple(3) Visit1-Visit3;
Do i=1 to 3;
If apple(i)=  ' '  then apple(i)='-' ;
End;
Drop I;
Run;

Proc print data= Aereplace;
Run;


Two or Multidimensional array:

Run the array process, in row and column wise.

Data Prod_prices;
Input prdcode $ m1-m3/m4-m6;
Array apple(2,3) m1-m6;
Do i=1 to 2;
Do j=1 to 3;
Apple (I,j)=round(apple(I,j), 0.1);
End;
End;
Drop I j;
Cards;
P101	23.45	22.56	26.23
	26.23	24.34	25.67
P102	45.23	45.64	46.12
	47.89	48.23	49.34
P103	56.87	57.34	58.32
	59.34	58.12	59.32
;

Proc print data= Prod_prices;
Run;

Transport File:

Transfer the information between the environments (SAS to SAS, SAS to non-SAS, or non-SAS to SAS) using transport files.

Transport files are 3 Types.
1.ASCII
2.XPT file
3. Xml files

Cport procedure(Base):
Converts data or dataset as a transport file like ASCII or xpt files.

Cimport procedure:
Convert transport file as a SAS file

Note : Datasets and format catalogs can be created as transport files except views.

Convert the data into transport file format(ASCII Format):

/* Collect Datasets */
Libname User1 'e:\sas\source\sasfiles';

/* Create Transport File */
Proc cport data=user1.ae File= 'E:\ae.txt';
run;


/* Convert transport file to SAS file */
Proc cimport infile='E:\ae.txt' data=adevents;
run;

Create Transport file in xpt format:

Proc cport data=user1.dm file='e:\dm.xpt';
run;

/*Convert transport file format to sas file format */

Proc cimport infile='E:\dm.xpt' data=demo;
run;

Convert datasets or group of SAS Files into transport file format:
Memtype option: enable to specify member type.

memtype=all/data/cat;
default is all.


Proc cport lib=user1
file='e:\clinic.txt' memtype=data;
select ae dm mh1 mh2;
run;

select statement: enable to specify required sas file names.

exclude statement: enable to specify non-required sas file names.

Proc cimport infile='E:\clinic.txt' lib=work;
exclude ae dm mh1 mh2;
run;

Note: As per the requirement, memtype option, select statement and exclude statement can be used in cport and cimport procedures.

Create xpt and xml files using libname statement:
In these cases, within the libname statement, we have to use external engines.
These external engines are total 63 types.
These are 
Excel
access
Oracle
db2
mysql
SQLSvr
ODBC
OLEDB
SPSS
Xport
xml............

Convert the datasets into xpt file format:

/* Collect datasets */
libname user1 'e:\sas\source\sasfiles';

/* Create external library */
libname Dmxptlib xport 'e:\dm.xpt';

/* copy form sas to xport */
Proc copy in=user1 out=dmxptlib;
select dm;
run;

/* delete external library */
libname Dmxptlib clear;

Convert xpt file format as a sas file format:

libname Dmxptimp xport 'e:\dm.xpt';

/* copy form sas to xport */
Proc copy in=Dmxptimp out=work;
run;

/* delete external library */
libname Dmxptimp clear;

xml file: It is a universal language as well as xml files as language database.

Xml file creations are available in SAS version V5 onwards.

/* Create external library */
libname aexml xml 'e:\ae.xml';

proc copy in=user1 out=aexml;
select ae;
run;


/* Delete external library */
libname aexml clear;

Convert xml files as sas file format:

/* Collect aexml file */

libname aexmlimp xml 'e:\ae.xml';

/* Copy xml library to sas library */
Proc copy in=aexmlimp out=work;
run;

/* delete library */
libname aexmlimp clear;

Interface : 
infile statement, file statement, import procedure, export procedure, PTF applications , dbload procedure and libname access method are the Interface components.

Libname access method: Create external libraries or database libraries using external data by the SAS or SAS SQL knowledge.

To manage oracle using libname access method:

/* Create external library */
Libname oralib1 oracle user=rawdata password=rawdata path='orcl';

/* Reporting */
Proc format ;
value mnc 1='Jan' 2='Feb' 3='Mar';
run;
Proc print data=oralib1.customers noobs label;
var custno month goods;
label custno='Customer Number'
Goods='Goods in Millions';
Format month mnc.;
run;

Proc sql;
select custno, monotonic(custno) as Nobs, month format=mnc., goods from oralib1.customers;
quit;


Read the data from multiple oracle tables to One dataset:

Data plans;
set oralib1.plans_2008 oralib1.plans_2009;
run;

Dumping the oracle tables from oracle to SAS:


proc copy in= oralib1 out=work ;
select ae adr demo mh1 mh2;
run;

**********************************************

Printto procedure: 
The PRINTTO procedure defines destinations for SAS procedure output and for the SAS log.

Syntax:
Proc printto log='<fileref>' print='<fileref>';
run;

/* Create external library */
Libname oralib1 oracle user=rawdata password=rawdata path='orcl';
Proc printto log='e:\saslog.txt' print='sasoutput.txt';
run;
proc print data=oralib1.customers ;
run;

Restoring the Output Destinations to the Default:
printto procedure without options can be used to set the default destinations for log and print.
Proc printto;
run;

**********************************************

Run merge process for database tables:

/* Collect matching data */
data Ae_Adr_match;
Merge oralib1.ae(in=a) oralib1.adr(in=b);
by pid;
if a=1 & b=1;
Run;

proc print;
run;

/* Collect non-matching data */
data Ae_Adr_nonmatch;
Merge oralib1.ae(in=a) oralib1.adr(in=b);
by pid;
if a=0 or b=0;
Run;

proc print;
run;
/* plug out */
libname oralib1 clear;

Syntax for appending the data into database tables:

Proc append base=Oralib1.<table name> data=<data set> force;
run;

Create external library to plug into MS-Access files:

/* Plug into MS-Access */
Libname Acclib1 access 'e:\sas\source\accs\data-new.mdb';

proc format ;
value vst 1='Visit1'  2='Visit2' 3='Visit3';
run;
/* Reporting */
Proc print data=acclib1.ae label;
var subid visit actype;
where actype ne 'Null';
Label actype='Adevents Type';
format visit vst.;
Run;

/* Plug out */
libname acclib1 clear;


Create external library to plug into MS-Excel files:

/* Plug into MS-Access */
Libname Exlib1 excel 'e:\sas\source\xls\data.xls';

/*Reporting */
Proc print data=exlib1.'Sheet1$'n label;
label fname ='Full Name';
where gender='m';
run;

Read Data sheet into dataset :

Data Dm;
set exlib1.'sheet1$'n;
run;
/* Plug out */
libname exlib1 clear;


In this process, we can use all the procedures, except copy procedure. 

SAS/Access interface to ODBC:

ODBC = Open Database Connectivity

Using ODBC, we can interact with any external data source.

In ODBC Process, first user needs to build a connectivity for required external source using external drivers.

These drivers are available in Control Panel>Administrative Tools> Data Sources (ODBC) 

Connectivity requirements:
User: rawdata
password: rawdata
path: orcl

Create ODBC Connectivity for Oracle:

Control Panel>Administrative Tools> Data Sources (ODBC) 
Click on add button>
From the list, select oracle drivers, click on Finish.
Then Type connectivity name, TNS Service name( here path='orcl'). Specify user Id. Click on test the connection, Type the password, Click on OK> leads to Connection Successful.


These connectivities can be used in PTF applications and libname access methods.

Using Libname access method:
/* Plug into oracle */
Libname oralib1 ODBC datasrc='oracon1' password=rawdata ;

/* Report */
proc print data=oralib1.ae;
run;

Plug into Access:

Create ODBC Connectivity for MS-Access:

Control Panel>Administrative Tools> Data Sources (ODBC) 
Click on add button>
From the list, select MS-Access(.mdb) drivers from the list, click on Finish.
Then Type connectivity name, Click on OK> click OK.

Libname  Acclib1 ODBC datasrc='Acccon1' ;



Create ODBC Connectivity for MS-Excel:

Control Panel>Administrative Tools> Data Sources (ODBC) 
Click on add button>
From the list, select MS-Excel(.xls) drivers from the list, click on Finish.
Then Type connectivity name, Click on OK> click OK.

Libname  Exlib1 ODBC datasrc='Excon1' ;

*******************************************************

Run Anlaysis and Reporting Using Base SAS Procedures:

FREQ Procedure:

Generate frequency tables.

These frequency tables are two types. 
1. One way to n-way frequency tables(without comparisons)
2. Cross Tabulate frequency tables(with comparisons)

Syntax: 
Proc freq data=<dataset name>;
Tables <variables>/<options>;
Weight <variable>;
Run;

Table statement: Enable to specify variables to generate frequency tables.
These variables are either numeric or character.

Frequency variables are called categorical variables or grouping variables or classification variables.

Weight statement:  Enable to specify only one variable to generate column weights or column sum.
The variable must be numeric.

Generate One way to n-way frequency tables:

Table name : Customers
Location: Oracle
user: Rawdata
password: rawdata
path: orcl
Task: report number of operations customer-wise.
Key variable: custno.


/* Plug into oracle */
Libname oralib1 oracle user=rawdata password=rawdata
path='orcl';

Proc freq data=oralib1.customers;
tables custno;
run;

One way to n-way frequency tables contain frequency, percent, cumulative frequency and cumulative percent.

Options:

Nofreq: Suppress frequency column in output.

nopercent: suppress percent column in output.

nocum: suppress cumulative columns in output.

norow: suppress rowpercent in output.
nocol: suppress column percent in output.


Proc freq data=oralib1.customers;
tables custno/nocum;
run;

Two-way frequency table:
Number of operations by branch-wise, number of operations by product-wise.

Libname user1 'e:\sas\source\sasfiles';

proc freq data=user1.customers;
tables prdcode/nocum nopercent;
run;
*or;
proc freq data=user1.customers;
tables bchcode prdcode/ nocum nopercent;
run;

Report frequency values in descending order:

SAS default generates in ascending order using frequency variable values.

options:
Order option: Control order of the values in output.

order=data/formatted/unformat/freq

Data: Control order of the values in output according to dataset order.

Example:
1
5
3
4
2

format: Control order of the values in output according to format values in ascending order.
Example:
Apr
Feb
Jan
Mar
May

Unformat: Reportt in ascending order using dataset values or unformatted values.
Example:
1
2
3
4
5


Freq: Report in descending order using frequency  values.

proc freq data=user1.customers order=freq;
tables  prdcode/ nocum nopercent;
run;

Number of operations by customers and product-wise:

proc freq data=user1.customers order=freq;
tables custno* prdcode;
run;


Cross-Tabulation cell statistics contain freq, percent, row percent and column percent.

Percent=    Number of occurences     * 100      
		Total number of occurences

Row Percent=    Number of occurences     		* 100      
		   Total number of occurences in row-wise


Column Percent=     Number of occurences         * 100      
		   Total number of occurences in column-wise


proc freq data=user1.customers;
tables custno* prdcode/norow nocol nopercent;
run;

Number of operations by branch and monthly-wise:
proc freq data=user1.customers;
tables bchcode * month/norow nocol nopercent;
run;

Note: When we generate cross tabulate frequency tables, Then sas internally runs Tranpose process.

Assign the format for reporting:

Proc format;
value mnc 1='Jan' 2='Feb' 3='Mar';
run;

proc freq data=user1.customers;
tables month/nocum nopercent;
format month mnc.;
run;

Assign the format for analysis and reporting:
Dataset name: sashelp.class
Variable: Age
Number of subjects by age intervals:
10-12
13-15
16-18

Proc format;
value Agint	10-12='10-12' 
			13-15='13-15'
			16-18='16-18';
run;
proc freq data=sashelp.class;
tables age/nocum nopercent;
format age agint.;
run;

***************************************************

proc freq data=sashelp.class noprint;
tables sex/out=sex_freq;
run;

Note: Output dataset contains frequency(COUNT) count and percent of total frequency(PERCENT).

Label statement is not available in freq procedure.

Run the data cleaning for generating frequency output:

/* Source */
Data Ae;
Input Arm $ Subid Visit $ Aeterm $ Sae $;
Cards;
Arm1	101	Visit1	Vomiting	N
Arm1	102	Visit1	Fever	N
Arm1	102	Visit1	cold		N
Arm1	103	Visit1	skinprb	N
Arm1	104	Visit1	coma		Y
Arm1	105	Visit1	Vomiting	N
Arm2	201	Visit1	eardis	N
Arm2	202	Visit1	eyedis	Y
Arm2	203	Visit1	eyedis	Y
Arm3	301	Visit1	eardis	N
Arm3	302	Visit1	cold		N
Arm3	304	Visit1	Fever	N
Arm3	304	Visit1	cold		N
Arm1	101	Visit2	Vomiting	N
Arm1	102	Visit2	eardis	N
Arm1	103	Visit2	Fever	N
Arm1	104	Visit2	coma		Y
Arm2	201	Visit2	cold		N
Arm2	202	Visit2	eyedis	Y
Arm2	301	Visit2	eyedis	N
Arm2	302	Visit2	Fever	N
Arm3	304	Visit2	skinprb	N
Arm3	304	Visit2	cold		N
Arm3	305	Visit2	eyedis	Y
Arm3	305	Visit2	eardis	N
;

Data Ta;
input Arm $ Dose $;
Cards;
Arm1	Asp-05mg
Arm2	Asp-10mg
Arm3	Asp-15mg
;

Task: Report number of adverse events reported treatment-wise(one-way):

Note: If the adverse event is repeated more than one time for same treatment, we have to count only once.
Cleaning variables: Dose, Aeterm.
Frequency variable: Dose.

/* Join the tables */
proc sql;
create view Ta_ae as 
select * from ta, ae where
ta.arm=ae.arm;
quit;

/* Clean data */
proc sort data=ta_ae out=aeclean1 nodupkey;
by dose aeterm;
run;

/* Generate frequency */
proc freq data=aeclean1;
tables dose /nocum nopercent;
run;

Task: Report number of serious adverse events reported treatment-wise(one-way):

/* Generate frequency */
proc freq data=aeclean1;
tables dose /nocum nopercent;
where sae='Y';
run;

Task: Report number of subjects reported adverse events by treatment-wise:

Note: If the subject reported event  repeated more than one  adverse reaction for same treatment, we have to count only once.
Cleaning variables: Subid ,Dose.
Frequency variable: Dose.


/* Clean data */
proc sort data=ta_ae out=aeclean2 nodupkey;
by subid dose ;
run;

/* Generate frequency */
proc freq data=aeclean2;
tables dose /nocum nopercent;
run;

Task: Report number of subjects reported serious adverse events by treatment-wise:


/* Generate frequency */
proc freq data=aeclean2;
tables dose /nocum nopercent;
where sae='Y';
run;


Task: Report number of subjects and percent of subjects reported adverse events by treatment-wise and visit-wise:

Note: If the subject reported event  repeated more than one  adverse reaction in same visit for same treatment, we have to count only once.
Cleaning variables: Subid, visit, Dose.
Frequency variable: Visit, Dose.

Template for reporting:


	Treatment1	Treatment2	Treatment3
Visit1	xx(xxx)	xx(xxx)	xx(xxx)
Visit2	xx(xxx)	xx(xxx)	xx(xxx)


Generate frequency tables:

/* Clean data */
proc sort data=ta_ae out=aeclean3 nodupkey;
by subid visit dose ;
run;

/* Generate frequency */
proc freq data=aeclean3 noprint;
tables visit*dose /norow nocol out=aefreq;
run;

/* Customization for reporting */
Data Aecust;
Set Aefreq;
Percent1=round(percent,0.1);
Fpt=compress(count || '(' || percent1 || ')');
drop count percent percent1;
run;

/* Run transpose forreporting */
Proc transpose data=aecust out=aetrans (drop=_name_);
id dose;
var fpt;
by visit;
run;

Proc print data=aetrans label split='*';
label 	Asp_05mg='Asp-05mg*n(%)'
		Asp_10mg='Asp-10mg*n(%)'
		Asp_15mg='Asp-15mg*n(%)';
run;

Generate Column Weights or column sums:

/* Collect datasets */
libname user1 'e:\sas\source\sasfiles';

proc freq data=user1.customers;
tables custno/nocum nopercent;
weight goods;
run;

weight statement generates sums result and load them into the frequency variable(frequency variable values are replaced by  sum results).

To use more than two variables for cross tabulation:
Task: Number of operations by customer, branch and product-wise.

proc freq data=user1.customers;
tables custno*bchcode*prdcode/nopercent norow nocol;
run;

/* or */

proc freq data=user1.customers;
tables bchcode*prdcode/nopercent norow nocol;
by custno;
run;

Note: In tables, zero(0) represents no frequency.

Control the missing values in frequency analysis:

Data Survys;
input resp $;
cards;
Y
N
.
Y
Y
.
Y
N
Y
N
;

Frequency procedure default nature exclude the missing values from analytical process.

Missing option: Include missing values in analytical operations.

proc format;
value $rsp 'Y'='Response is Yes'
		 'N'='Response is No'
		 ' '='No Response';
run;

proc freq data=survys;
tables resp/missing nocum nopercent;
format resp $rsp.;
run;


Table Grouping Syntax:

Request	Equivalent to
tables A*(B C);	tables A*B    A*C;
tables (A B)*(C D);	tables A*C    B*C    A*D    B*D;
tables (A B C)*D;	tables A*D    B*D    C*D;
tables A – – C;	tables A    B    C;
tables (A – – C)*D;	tables A*D    B*D    C*D;


*************************************

Submit frequency procedure without any statement:

proc freq data=sashelp.class;
run;

/* Or */
proc freq data=sashelp.class;
tables _all_;
run;

In these cases, SAS default takes all the variables from the input dataset and generate frequency tables.

Means Procedure

Generates summary reports and creates summary datasets.

Syntax: 

Proc   data=<dataset> ;
class <variables>/<options>;
var <variables>;
output out=<output dataset>;
run;

Class Statement: enable to specify classification variables(either numeric or character).

Var statement:  enable to specify analysis variable(It must be numeric).

Classification variables can be called Levels.
Analysis variables can be called Measures.
Statistical results can be called Measurements.

output out statement: It creates output dataset or summary dataset.


Generate summary report without using classification variables:
/* Collect datasets */
Libname user1 'e:\sas\source\sasfiles';

proc means data=user1.salesdata;
var stock sale;
run;

Generate summary report using classification variables:
One Dimensional summary report:

proc means data=user1.salesdata;
class state;
var sale;
run;

Note: Means output contains N Obs, N, Mean, Standard deviation, Minimum and maximum.

Nobs: It contains frequency which is coming from classification variable.

N: It represents number of non-missing values which is coming from analysis variable.

Two Dimensional summary report:

proc means data=user1.salesdata;
class state area;
var sale;
run;

Multi-Dimensional analysis and report:
proc means data=user1.salesdata;
class state area prdcode;
var sale;
run;

printalltypes option:
Generates multiple summary reports using different combination of classification variables.

proc means data=user1.salesdata printalltypes;
class state area;
var sale;
run;

Note: 

(2)class variables

Using this formula, we can estimate number of reports generated by the means procedure when we use printalltypes option.

Types statement: enable to specify the required combinations to generate summary reports.

proc means data=user1.salesdata printalltypes;
class state area prdcode month;
var sale;
types state*prdcode state*month
state*area*prdco
de;
run;

ways statement: enable to specify some number. These number represent to generate summary report using number of classification variables.
Numbers are 0,1,2,3 and 4.

proc means data=user1.salesdata printalltypes;
class state area prdcode;
var sale;
ways 0 1;
run;

Here, in the output, report is generated without using classification variables effected by 0, and with using one single classification variable effected by 1 used in the ways statement.

If we use 2, Report will be generated using 2 class variables (two dimensional analysis and report).

proc means data=user1.salesdata printalltypes;
class state area prdcode;
var sale;
ways 2;
run;

Maxdec option: It controls the decimal places in output window with roundup values.

proc means data=user1.salesdata maxdec=2;
class state;
var sale;
run;

In the output, all the values are rounded to 2 decimal places based on 3rd decimal place.

Descending option: Report classification variable values in descending order.

Note: Class statement default does sorting on classification variable values in ascending order.

proc means data=user1.salesdata ;
class month/descending ;
var sale;
run;

Assign the format for reporting: 

proc format;
value mnc 1='Jan' 2='Feb' 3='Mar'
		4='Apr' 5='May' 6='Jun';
run;

proc means data=user1.salesdata ;
class month/descending ;
var sale;
format month mnc.;
run;

Assign the format for analysis and report: 
Task: generate sales summary by quarters.

Proc format;
Value Qt 1-3='First Quarter'
		4-6='Secong Quarter';
run;

proc means data=user1.salesdata ;
class month/descending ;
var sale;
format month qt.;
run;

Statistical operators:

Sum, Mean, Median, Var, Std, Max, Min, Range, N, Q1, Q3, P10, P25, P50(Q2, median), P75, P90, P95.

N option controls N Obs and N Values in output.


Report statistical results in output: 

proc means data=user1.salesdata  sum mean;
class State ;
var sale;
run;

proc means data=user1.salesdata  sum mean mode P25;
class State ;
var sale;
run;

Note: If required, we can report required statistical values in the output by adding them in the options like in the above application.

*** Interview purpose ****
Difference between Class statement and by statement:

/* Using class statement */
proc means data=user1.salesdata ;
class State ;
var sale;
run;

/* By statement */

proc sort data=user1.salesdata out=salesort;
by state;
run;
proc means data=salesort ;
var sale;
By state;
run;

Class Statement	By Statement
1. Internally runs sorting process in ascending order by default.	1. It must require sorted data in ascending order.
2. Generate grouping results in single tables.	2. Reports grouping results in multiple tables.


Notsorted option:
Suppress the error message in log window if the by variable is not sorted.

proc means data=salesort ;
var sale;
By notsorted area;
run;

Completetypes option: 
Generate all possible combinations using grouping and subgrouping variables.

Missing options:
 It is a global option and reports numeric missing values by the required special characters . Default is period.

/* Pass required special character */
options missing='-';

proc means data=user1.salesdata completetypes means;
class State area;
var sale;
run;

/* Pass default */
options missing='.';


Generate frequency table by the means procedure:
One-way frequency table:

proc freq data=sashelp.class;
tables sex/nocum nopercent;
run;

proc means data=sashelp.class N;
class Sex;
run;

Cross Tabulate frequency table(with comparisons):

Task: Report Number of males and females by age intervals.
age intervals are 10-12, 13-15, 16-18, 19-21, 22-24.

/* For freq procedure */
Proc format;
value agint 10-12= '10-12'  13-15 ='13-15'  16-18='16-18'  19-21 = '19-21'  22-24 ='22-24';
run;

proc freq data=sashelp.class;
tables sex*age /norow nocol nopercent;
format age agint.;
run;

proc means data=sashelp.class N completetypes;
class Sex age/preloadfmt;
format age agint.;
run;

Preloadfmt option:
Report the values with required and non-required formats (preloaded formats).

This feature is available from SAS V9.2 onwards.

Assign the labels:

proc means data=sashelp.class N completetypes;
class Sex age/preloadfmt;
format age agint.;
label sex='Gender'
	 Age='Age Intervals';
run;

In means procedure, we can assign labels only for variable names, not for statistical Tables.

Create summarized datasets:

proc means data=user1.salesdata Noprint;
class State area;
var sale;
output out=Sumz1;
run;

In above application, SAS Backend default runs two operations.
One is transpose process, second one is printalltypes option.

Summary datasets contain three automatic variables.

_STAT_   _FREQ_    _TYPE_

_STAT_  : Variable type is character and it contains statistical keywords as values.

 _FREQ_ : vraiable type is numeric and it contains frequency value (N Obs).

_TYPE_ : variable type is numeric and it contains some numbers. These numbers represent type of analysis.
Number starts with zero.

Customization of summary dataset:
proc means data=user1.salesdata noprint;
class State area;
var sale;
output out=sumz2 N=Sale_N Mean=Sale_Mean Std=sale_std max=sale_max min=sale_min;
run;

* or ;
proc means data=user1.salesdata noprint;
class State area;
var sale;
output out=sumz2 N= Mean= Std= max= min= /autoname;
run;

Autoname option:
 Generate new variable names in summary dataset automatically analysis variable name with statistical keyword.

Uses of summary datasets:
1. Reduce storage place
2. Reduce the processing time to produce the summary result.
3. Further analysis purpose.

Generate the reports from summary datasets:

proc means data=user1.salesdata noprint;
class State area prdcode  month;
var stock sale;
output out=sumz1 
N= Stock_N Sale_N
Sum= Stock_sum Sale_sum
Mean= Stock_mean Sale_mean
Var= Stock_var Sale_var
Std= Stock_std Sale_std
max= Stock_max Sale_max
min= Stock_min Sale_min;
run;
ways option: It creates _WAY_ automatic variable in summary dataset.

It contains some numbers. These numbers represents generate summary report using number of classification variables.

Numbers start with zero.

0-> No classification variable
1-> One classification variable(One Dimensional)
2-> Two classification variables(Two Dimensional)
3-> Three classification variables(Three Dimensional).....

proc means data=user1.salesdata noprint;
class State area prdcode;
var stock sale;
output out=sumz2/ways; 
run;

proc print data=sumz2;
run;

NWAY option: stores last combination in summary datasets.

proc means data=user1.salesdata noprint nway;
class State area prdcode;
var stock sale;
output out=sumz3/ways; 
run;

**** Interview purpose ***********

Submit Means procedure without any statement and options:

In these cases, SAS default takes all numeric variables and generate summary report.

proc means data=user1.salesdata;
run;

*Or ;
proc means data=user1.salesdata;
var _numeric_;
run;


Summary Procedure:
Generate summary reports and creates summarized datasets.
Similar nature of means procedure.

Generate summary report:
* Means procedure ;
proc means data=user1.salesdata;
class state area;
var sale;
run;

* Summary procedure ;
proc Summary data=user1.salesdata print;
class state area;
var sale;
run;

Note:
means procedure default runs with print option.
summary procedure default runs with noprint option. So, we have to explicitly provide print option, if we want to get the output.

summary procedure requires print option or output out statement for running the analysis.

Create summary dataset:

* Means procedure ;
proc means data=user1.salesdata noprint;
class state area;
var sale;
output out= sumz1;
run;

* Summary procedure ;
proc Summary data=user1.salesdata;
class state area;
var sale; 
output out= sumz2;
run;


Note: Generating summary reports by means procedure is efficient because by default print option is running.

creating summary datasets by summary procedure is efficient because by default noprint option is running.

Tabulate procedure:

Generate summary reports in table format.

proc tabulate data=<dataset> <options>;
class <variables>;
var <variables>;
table <row variables> * <statistics>,
<column variables> * <statistics>;
Run;



Formatting Characters Used by PROC TABULATE
Position	Default	Used to draw
1	|	the right and left borders and the vertical separators between columns
2	-	the top and bottom borders and the horizontal separators between rows
3	-	the top character in the left border
4	-	the top character in a line of characters that separate columns
5	-	the top character in the right border
6	|	the leftmost character in a row of horizontal separators
7	+	the intersection of a column of vertical characters and a row of horizontal characters
8	|	the rightmost character in a row of horizontal separators
9	-	the bottom character in the left border
10	-	the bottom character in a line of characters that separate columns
11	-	the bottom character in the right border
              Formatting Characters in PROC TABULATE Output
 


Table statement: Builds a table.

Table Templates:





Table 1:

class Variable	Analysis Variable
	





Table 2:

class Variable	Statistics	Analysis Variable
		










Table 3:

class Variable	Class Variable
	Analysis Variable
	Statistics
	





Table 4:

class Variable	Statistics	Class Variable
		Analysis Variable
		



Generate summary report:

Libname user1 'e:\sas\source\sasfiles';

proc tabulate data=user1.salesdata;
var stock sale;
table stock sale;
run;

Tabulate procedure default generates sums.

Statistical options:
Sum, mean, median, var, std, range, N, Q1, Q3, pctn, rowpctn, colpctn, P5, P10, P25, P50(Q2, Median), P75, P90, P95.

Generate summary reports using classification variables:

One Dimensional Report (Table1 or Table2 Templates):

* Table1;
proc tabulate data=user1.salesdata;
class state;
var  sale;
table state,  sale*(sum mean std max min);
run;


* Table2;
proc tabulate data=user1.salesdata;
class state;
var  sale;
table state*(sum mean std max min),  sale;
run;

One Dimensional Report:

proc tabulate data=user1.salesdata;
class state prdcode;
var  sale;
table state* prdcode, sale*(mean std);
table state* prdcode*(mean std), sale;
table state, prdcode*sale*(mean std);
table state*(mean std), prdcode*sale;
run;

Control Decimal places in output:
F=w.d

It controls decimal places in output with roundup values.
w=Total width
d=decimal places

proc tabulate data=user1.salesdata;
class state;
var  sale;
table state, sale*(mean std max min)*f=9.1/rts=9;
run;

rts option:
It controls the width of the variable in output.

Report statistical results with different decimal places:

sum-3 decimals	Mean-2 decimals
std-1 decimal	Max, min- 0 decimal.

proc tabulate data=user1.salesdata;
class state;
var  sale;
table state, sale*(sum*f=11.3   mean*f=10.2 std*f=10.1 max*f=6.0 min * f=6.);
run;

Assign the formats for reporting:

proc tabulate data=user1.salesdata;
class prdcode;
var  sale;
table prdcode='Product Code',
Sale=' ' * (Mean='Mean of sale' std='Std of sale');
Run;

Box Option: 
          Print text in Box. Box is available at left top corner.

proc tabulate data=user1.salesdata;
class prdcode;
var  sale;
table prdcode=' ',
Sale=' ' * (Mean='Mean of sale' std='Std of sale')/Box='Product Code';
Run;

Assign the formats for reporting as well as report class variable values in descending order:

Proc format;
Value Mnc 1='Jan' 2='Feb' 3='Mar'
		4='Apr' 5='May' 6='Jun';
Run;

proc tabulate data=user1.salesdata;
class month/descending;
var  sale;
table month, sale*(Max min);
format month Mnc.;
run;

Assign the formats for analysis and reporting:

Proc format;
Value Qt	1-3='Quarter1'
		4-6='Quarter2';
Run;

proc tabulate data=user1.salesdata;
class month/descending;
var  sale;
table month, sale*(Max min);
format month Qt.;
run;


Generate multiple summary report in single table format:

Task:
To report Maximum, Minimum sales state-wise
To report Maximum, Minimum sales area-wise
To report Maximum, Minimum sales state and area-wise.

Proc tabulate data=user1.salesdata;
class state area;
var  sale;
table state area state*area, sale*(Max min);
run;

To report Subtotals and Grand totals:

Proc tabulate data=user1.salesdata;
class state area;
var  sale;
table state*( area all='Total'), sale*sum;
run;

Printmiss option: Report all possible combinations, i.e. non-missing and missing combinations.

It is a similar nature of completetypes.

Misstext: Replace the missing values by the text in output.


Proc tabulate data=user1.salesdata;
class state area;
var  sale;
table state* area, sale*sum/printmiss misstext='-';
run;

Generate frequency table by the tabulate procedure:

One-way frequency table:

Proc freq data=sashelp.class;
tables sex/nocum;
run;

Proc tabulate data= sashelp.class;
class sex;
table sex, (n pctn);
run;

Customization:

Proc tabulate data= sashelp.class;
class sex;
table sex=' ', (n='No Of Subjects'*f=9.  
pctn='Percentage of Subjects')/Box='Sex' Rts=8;
run;

Cross-Tabulate frequency table: 

Proc format;
Value agint 10-12= '10-12'  13-15 ='13-15'  16-18='16-18'  19-21 = '19-21'  22-24 ='22-24';
run;

Proc tabulate data= sashelp.class;
class sex age/prloadfmt;
table sex, age='Age Intervals'*n *f=6. /printmiss misstext='0' Box='Sex' Rts=8;
Format age agint.;
run;

Create output Dataset:

Proc tabulate data=user1.salesdata out=sumz1;
class state;
var  sale;
table state, sale*(mean max min std);
run;

For creation of summary datasets, means, summary procedures are efficient for data understanding and reporting purpose. Tabulate procedure is efficient for reporting purpose.


******************************************************

Report Procedure:

Generates detailed, summarized, detailed and summary reports(combination) as well as customized reports.

print, sql, freq, means, tabulate and transpose procedure features are available in report procedure.

Report procedure default generates reports in report window.

Generate detailed report:

Proc report data=user1.salesdata;
run;

Customization:
Nowindow / Nowd option: Generate report in output window.

headskip option: Generates one line gap between variables to observations.

headline option: Generates undeline between variables to observations.

Columns statement: Build a report with required variables.

Proc report data=user1.salesdata nowd headskip headline;
columns month state sale;
run;

noheader option: Generate the report without column names.

Box option: Generate the report in box format or table format.

Proc report data=user1.salesdata nowd noheader box;
run;

Note: Nowindow, headskip, headline, noheader, box options are report layout options.

Define statement: It indicates to sas system, how to use the required variable to build a report.

define <variable>/<options>;

Options for Define statement: 

Order: Report the values in ascending order.

Order descending: Report the values in descending order.

Group option: generates groups or summary breaks in group-wise in ascending order.

Group descending: generates groups or summary breaks in group-wise in descending order.

Across: across variable means, convert variable values as a column names.
when used, across option default reports the frequency values.

flow option:  generates breaks in character values.

width option: It controls the width of the variable in output.

Format option: It controls the decimal places in output as well as assign the formats.

color option: Assign the color.

noprint option: suppress the column in report.

computed option: Run the pre calculations by the compute block.
***********
Statistical keywords/options:
N, sum, median, mean, range, var, std, max, min, pctn, rowpctn, colpctn, Q1, Q3, P5, P10, P25, P50, P75, P90, P95.
These statistical options can be used in define or column statement.

Note: Generate summary reports, then statistical options should be used in column statement.
Generate detailed and summary reports, then statistical options should be used in define statement.

Generate Summary Report:
**************************************
One Dimensional:

Proc report data=user1.salesdata nowd headline;
columns state sale,(sum mean std max min);
define state/group;
run;

Customization(Assign the labels and control decimal places):


Proc report data=user1.salesdata nowd headline;
columns ( '**' state sale,(sum mean std max min));
define state/group 'Location';
define sale/'-Sale Summary-';
define mean/format=9.2;
define std/format=8.1;
run;

Two-Dimensional report:

Proc report data=user1.salesdata nowd headline split='*';
columns ( '--' state prdcode sale,(mean std));
define state/group ;
define prdcode/group 'Product*code';
define sale/' ';
define mean/format=10.2 'Mean of*sale';
define std/format=9.1'Std of*sale';
run;

Completerows: Report all possible combinations using grouping and sub-grouping values.


options missing='-';
Proc report data=user1.salesdata nowd headline completerows;
columns state area sale,(sum mean);
define state/group ;
define area/group;
run;
* default;
options missing='.';

Generate frequency tables: 
One way frequency table:

proc report data=sashelp.class nowd headline;
columns sex N;
define sex/group;
run;
Customization:

proc format;
value $sx 'M'='Male' 'F'='Female';
run;

proc report data=sashelp.class nowd box completerows;
columns sex N;
define sex/group width=6 format=$sx.;
define N/'No of Subjects';
run;

Cross tabulate frequency table:

Proc format;
value agint 10-12= '10-12'  13-15 ='13-15'  16-18='16-18'  19-21 = '19-21'  22-24 ='22-24';
run;


proc report data=sashelp.class nowd box completerows;
columns sex age N;
define sex/group width=8 format=$sx.;
define age/group format=agint. preloadfmt 'Age Intervals';
define N/'No of Subjects';
run;


Generate the Template according to template:

	Age intervals
Sex	Freq



proc report data=sashelp.class nowd headline completerows;
columns sex age N;
define sex/group format=$sx.;
define age/ format=agint. across preloadfmt 'Age Intervals';
define N/'No of Subjects';
run;

Note: If we use across option, then default cell values are frequency.
In above application, N represents row total.

Control order of the values in output:

proc format;
value mnc	1='Jan'
		2='Feb'
		3='Mar'
		4='Apr'
		5='May'
		6='Jun';
	Run;


Proc report data=user1.salesdata nowd box;
columns month sale,(mean std);
define month/group format=mnc. order=data width=6;
run;

 
Generate Detail and summary report:

Task:
1. To report sales operations state, area, and product-wise.
2. To report total sale state and area-wise.
3. To report total sale state-wise.

Break statement: Generate summary breaks in middle of the report before or after grouping using order variables.

Break <before/after> <order var>/<options>;

Options:

UL : Generates under lines.
OL: Generates Over lines.
DUL : Generates double under lines.
DOL: Generates double Over lines.
summarize : Print summary results.
Skip: Generate one line gap.
page: Generate the report in page-wise.

Rbreak statement: Generate breaks in starting of the report before or end of the report.

Rbreak <before/after>/<options>;

Options:
UL : Generates under lines.
OL: Generates Over lines.
DUL : Generates double under lines.
DOL: Generates double Over lines.
summarize : Print summary results.
Skip: Generate one line gap.

Report and page layout:
 


Compute Block: Run group of statements or pre-calculations.

Requirements: 1. Replace or generate values for reporting.
2. Generate the text for reporting.
3. Create new variable for reporting.

Compute <before/after> <order variable>/<options>;

Processing of the Compute Block according to report and page layout:


 

 
Line statement: Print variable values or text in report window or output window.

Line statement default recognizes the variables as numeric variables. for character variables, we need to pass $ symbol after the variable name.

line <char variable> $w.;


Proc report data=user1.salesdata nowd headline split='*';
columns ('--' state area prdcode Sale sale=sale1 sale=sale2 sale=sale3);
define state/order;
define area/order;
define prdcode/order 'Product*code';
define sale/sum 'Values*and*sum';
define sale1/mean 'Values*and*mean';
define sale2/max 'Values*and*max';
define sale3/min 'Values*and*min';
break after state/ul ol summarize skip;
break after area/ul ol summarize;
rbreak after/dul dol summarize;
compute after area;
state=' ' ;
prdcode='Summary';
endcomp;
compute after;
area='Grand';
prdcode='Summary';
endcomp;
compute before _page_;
line 'Sales detail and Summary report';
endcomp;
run;

Note: 
Line statement default recognizes each variables as numeric variables. for character variables, we need to pass $w. symbol after the variable name.

line <char variable> $w.;

example: line name $10. age;

Create new variable for reporting:
Create new variable for reporting can be done by
Using data _null_ or select statement or report procedure.

Only three ways are available.

Freq, means, summary and tabulate procedures are unable to create new variables for reporting.

Task: To report Balance, state, area nad product-wise.

Balance=Stock-Sale;

Note: Report procedure default recognize new variable type as numeric.

_Cn_ : It is an automatic variable in report procedure. Here n represents column number.

Within the compute block, within the expression, we have to use column numbers instead of variables.

while using functions, we can pass variables as well as column numbers.

proc report data=user1.salesdata nowd headline;
columns state area prdcode stock sale balance;
define state/group;
define area/group;
define prdcode/group;
define balance/computed;
define stock/noprint;
define sale/noprint;
compute balance;
balance=_C4_ - _C5_;
endcomp;
run;

Create character variable for reporting on conditional basis:

Note: IF statement can be used in report procedure within the compute block.


Data Emp_salaries;
input Eid $ Salary Sale;
Cards;
E101	3000	540
E102	3200	420
E103	3400	180
E104	3600	320
E105	3800	420
E106	4000	140
E107	4200	400
E108	4400	600
;

Conditions:

Condition	Expression
Sale >=500	Excellent
Sale >=350& Sale <500	Good
Sale>200 & Sale <350	Average
Sale <=200	Poor


Proc report data=emp_salaries nowd box;
columns eid salary sale rating;
define rating /computed;
compute rating/character length=10;
If _c3_ >=500 then rating='Very Good';
else if _c3_>350 & _c3_<500 then rating='Good';
else if _c3_>200 & _c3_<=350 then rating='Average';
Else rating ='Poor';
Endcomp;
Run;

Run the transpose using Report procedure(vertical to horizontal):

Note: horizontal to vertical transpose is not supported in report procedure.

Source Data:

P101,M1,340
P101,M2,430
P101,M3,320


Template for transpose:

Prdcode	Month
	Sale



/* Extract */
Data Prodsales;
infile  "E:\SAS\source\DLM\Sales_Months.txt" dsd;
input Prdcode $ Month $ Sale;
Run;

* Report ;
proc report data=prodsales nowd headline;
columns prdcode (Month, sale);
define prdcode/group;
define month/across;
run;

In this process, transpose variable must be numeric.
Here Sale is the transpose variable.

* Report ;
proc report data=prodsales nowd headline;
columns( '--' prdcode (Month, sale));
define prdcode/group;
define month/across '-Monthly Sales-';
define sale/' ';
run;


Generate the titles in the middle of the report:

Task: Report sales summary table by state area and product-wise.

Proc report data=user1.salesdata nowd headline;
columns state area prdcode sale,(sum mean max min);
define state/group noprint;
define area/group;
define prdcode/group;
Compute before state;
line ' ';
Line state $3. '-Summary Report';
line ' ';
endcomp;
compute after;
line ' ';
line ' ';
line 25*'*' 'End of the Report' 25 *'*';
endcomp;
run;

To use functions in Report procedure:

Within the compute block for purely calculations, within the expression, we have to use column numbers instead of variables.

while using functions, we can pass variables as well as column numbers.

To Use String Functions:

1. Combine the Strings
2. Split the strings

Data Mh;
Input Studyid $ Siteno $ Subjid $ Treatments : $25. ;
Cards;
X001	S234	U101 Placebo-05mg-05mg
X001	S345	U102	05mg-Placebo-10mg
X001	S456	U103	Placebo-10mg-5mg
;

Task: Create USUBJID variable combination of Studyid, Siteno and subjid separated by '-';

Create screen, Runin and EOS variable from the treatments variable.
*************************************************

options ls=160 nocenter;
proc report data=Mh nowd box;
columns studyid siteno subjid usubjid treatments screen runin EOS;
define usubjid/computed;
define screen/computed;
define runin/computed;
define EOS/computed;
Compute USubjid/character length=15;
USUBJID=trim(_c1_) || '-' || trim (_C2_) || '-' || trim(_C3_);
endcomp;
compute screen /character length=8;
screen=substr( _c5_, 1, index(_c5_, '-')-1 );
endcomp;
compute runin /character length=20;
runin1=substr(_c5_, index(_c5_, '-')+1);
runin=substr(runin1, 1, index(runin1, '-')-1);
endcomp;
compute EOS /character length=8;
eos=substr(runin1, index(runin1, '-')+1);
endcomp;
run;



********************************************************
To Use Date&Time Functions:

Data Ae;
Input Subjid Aeterm $ Aestdtime : datetime18.;
format Aestdtime datetime18.;
cards;
101	Eyedis	13may2005:10:23
102	Eardis	20jun2005:11:34
103	Eardis	21jan2005:20:34
;


Task: Create Aestartdate, Aestarttime from Aestdtime.

proc report data=ae nowd box;
Columns subjid Aeterm Aestdtime Aestartdate Aestarttime;
define aestartdate/computed format=date9. width=12;
define aestarttime/computed format=time5. width=12;
define Aestdtime/noprint;
compute aestartdate;
aestartdate=datepart(_c3_);
endcomp;
compute aestarttime;
aestarttime=timepart(_c3_);
endcomp;
run;


Task: To report sales operations state, area, product and monthly-wise.

To report sum, mean, std, max min of sale state, area and product-wise.



Template for Report:
State	Area	Prdcode	Month	Sum
Sale	Mean
Sale	Std
Sale	Max 
Sale	Min
Sale
			Sale					


Proc format;
value Mnc 1='Jan' 2='Feb' 3='Mar'
		4='Apr' 5='May' 6='Jun';
Run;


options ls=190 nocenter;
proc report data=user1.salesdata nowd headline split='*';
columns state area prdcode (month,sale) Ts Ag St Mx Mn ;
Define state/group;
Define area/group;
Define prdcode/group;
Define month/across '-Monthly Sales-' format=mnc. order=data;
Define Ts/computed 'Sum of *Sale';
Define Ag/computed 'Mean of *Sale' format=3.2 width=9;
Define st/computed 'Std of *Sale' format=3.2 width=9;
Define Mx/computed 'Max of *Sale';
Define Mn/computed 'Min of *Sale';
Compute Ts;
Ts=Sum(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Ag;
Ag=mean(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute st;
st=Std(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Mx;
Mx=max(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Mn;
Mn=Min(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
run;
options ls=100 center;

Generate Report in multiple pages:

Task: report sales data state-wise in multiple pages.

Proc report data=user1.salesdata nowd box;
columns state area prdcode month stock sale;
define state/order;
define area/order;
define prdcode/order;
define month/order;
Break after state/page;
run;

Store the result in output dataset:

In this process, Created dataset contains one automatic variable _break_. This variable will be populated when we use summarize option in break/rbreak statement.

Note: We cannot suppress the output in this process, because noprint option is not available across all the variables, but individually.
If we need to suppress the output in this process, we must write noprint option for all the variables in define statement.

options ls=190 nocenter;
proc report data=user1.salesdata nowd headline split='*' out=Sumz1;
columns state area prdcode (month,sale) Ts Ag St Mx Mn ;
Define state/group;
Define area/group;
Define prdcode/group;
Define month/across '-Monthly Sales-' format=mnc. order=data;
Define Ts/computed 'Sum of *Sale';
Define Ag/computed 'Mean of *Sale' format=3.2 width=9;
Define st/computed 'Std of *Sale' format=3.2 width=9;
Define Mx/computed 'Max of *Sale';
Define Mn/computed 'Min of *Sale';
Compute Ts;
Ts=Sum(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Ag;
Ag=mean(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute st;
st=Std(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Mx;
Mx=max(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
Compute Mn;
Mn=Min(_c4_, _c5_, _c6_, _c7_, _c8_, _c9_);
endcomp;
run;

Call Define function:
Set an attribute for required column or row.
These attributes are format or font or graph or URL.

Call define( _row_ or _col_, 'Attribute', '<Attribute type or name>')


Proc format;
Picture Ms low-high='999 Millions';
run;

options ls=100 missing='-' ps=240;
proc report data=user1.salesdata nowd;
columns state area sale;
define state/order;
define area/order;
define sale/sum width=20;
break after state/OL UL summarize;
compute after state;	
area='Total';
endcomp;
compute sale;
if _break_ ne ' ' then
call define ( _col_, 'Format', 'Ms.');
endcomp;
run;


ODS (Output Delivery System):
One of the component in Base SAS.
Using ODS features, we can generate reports in internal files, as well as external files or third party files.

Internal files are datasets or list files.

External/Third party files:
These files are 
HTML(Hypertext markup language)
RTF(Rich text format)
PDF(Portable Document format)

Generate the report in internal files:

Printto Procedure:
Generate list files and log files.

List files for output, log files for log.

Create List and log Files for detailed Report:


dm log 'clear';
dm out 'clear';
proc printto log='e:\dm_print.log';
run;
proc printto print='e:\dm_print.lst';
run;

proc print data=User1.dm;
run;

* Deactivate ;
proc printto;
run;
proc printto;
run;

Create List and log Files for summary Report:

dm log 'clear';
dm out 'clear';
proc printto log='e:\ae_freq.log';
run;
proc printto print='e:\ ae_freq.lst';
run;

proc freq data=User1.ae;
tables actype/nocum nopercent;
where actype ~= 'Null';
run;

* Deactivate ;
proc printto;
run;
proc printto;
run;

Store the output in dataset using Objective name:

Ods trace on;
Ods trace off;

It traces out objective name of the output and print in log window.

Ods trace on;
<Procedure>;
Ods trace off;

Ods output statement: Using objective name, stores the result in dataset.

ods output <objective name>=<dataset name>;

/* without using objective name */
proc freq data=user1.ae noprint;
tables actype/out=Ae_freq1;
run;

/* using objective name */
* find objective name;
ods trace on;
proc freq data=user1.ae;
tables actype;
run;
ods trace off;

* store the dataset;
ods output onewayfreqs=Ae_freq2;
proc freq data=user1.ae;
tables actype;
run;

Note: Here, we should not use noprint option in the procedure statement, because the dataset is created from the data which is there in output buffer/window.

For Means procedure:

/* without using objective name */
proc means data=user1.salesdata noprint;
class state area;
var sale;
output out=sumz1;
run;

/* using objective name */
* find objective name;
ods trace on;
proc means data=user1.salesdata ;
class state area;
var sale;
run;
ods trace off;

* store the dataset;
ods output summary=sumz2;
proc means data=user1.salesdata ;
class state area;
var sale;
run;

Note: Ods output statement can not create dataset for print procedure.

**********************************************

Generate report in third party files using ods features:
Using print procedure:

proc print data=user1.ae;
run;

ods listing close;
ods html file='e:\ae.html';
proc print data=user1.ae;
run;
ods html close;
ods listing;


Customization:
Graphical options:

Graphical options	Graphical Elements
Foreground	Front end color
Background	Back end color
front_face	Font Style
font_size	font size
Font_weight	Font format


Ods options: Obs, obsheader, header, data, total, and grand total.

Style options: Call the ods options with required graphical options.

Style(ods option)={Graphical options};


ods listing close;
ods html file='e:\ae1.html';
Title color=yellow bcolor=gray
'Adverse events by Subject';
proc print data=user1.ae
style(obs)={foreground=white background=blue}
style(header)={foreground=white background=purple
font_face='Elephant'}
style(data)={foreground=white background=green font_face='Times of Roman' font_weight=bold};
run;
ods html close;
ods listing;


Customization according to variables and values:

proc format;
value $bg 'Null'='Green'
		 other='Red';
run;


ods listing close;
ods html file='e:\ae2.html';

proc print data=user1.ae noobs label;
var subid/ style(header)={foreground=white background=blue}
style(data)={foreground=yellow background=gray font_weight=bold};
var actype/ style(header)={foreground=white background=purple}
style(data)={foreground=white background=$bg. font_weight=bold};
label subid='Subject Id'
	Actype='Action Type';
run;
ods html close;
ods listing;

Using tabulate procedure:


Title;
ods listing close;
ods html file='e:\Custreport.html';
proc tabulate data=user1.customers;
class custno;
var goods;
table custno, goods*(mean max min);
run;
ods html close;
ods listing;

Customization:

Here, no need to call any ods options, we can call graphical options.


Title;
ods listing close;
ods html file='e:\Custreport2.html';
proc tabulate data=user1.customers
style={foreground=white background=green font_weight=bold};
class custno;
classlev custno/ style={foreground=white background=green font_weight=bold};
var goods;
table custno={label=' '}, goods={label=' ' }*
(mean={label='Mean of goods' 
style=[foreground=white background=red]}
max={label='Max of goods' 
style=[foreground=white background=red]}
min={label='Mean of goods' 
style=[foreground=white background=red]})/
box={label='Customer Number' 
style=[foreground=white background=red]};
run;
ods html close;
ods listing;

Using report Procedure:

ods listing close;
ods html file='e:\sales.html';
proc report data=user1.salesdata nowd 
style(header)={foreground=white background=blue font_face='Magneto'}
style(column)={foreground=white background=green font_face='Niagara Solid'font_weight=bold font_size=5};
columns state area prdcode month sale;
define state/order;
define area/order;
define prdcode/order;
define month/order;
run;
ods html close;
ods listing;

For summary report:

ods listing close;
ods html file='e:\sales2.html';
proc report data=user1.salesdata nowd 
style(header)={foreground=white background=blue font_face='Magneto'}
style(column)={foreground=white background=green font_face='Niagara Solid'font_weight=bold font_size=5};
columns state area sale,(sum mean);
define state/group;
define area/group;
define sum/'Sum of Sale';
define mean/'Mean of Sale';
define sale/' ';
run;
ods html close;
ods listing;

For Detail and Summary Report:
Here, style requirements can be used in define, break and rbreak statements.

ods listing close;
ods html file='e:\sales3.html';
proc report data=user1.salesdata nowd ;
columns state area sale;
define state/order
style(header)={foreground=white background=red}
style(column)={foreground=white background=green font_weight=bold};
define area/order;
define sale/sum;
break after state/summarize
style={foreground=white background=purple
font_face='Magneto'};
Rbreak after/summarize
style={foreground=white background=gray
font_face='Times of Roman'};
compute after state;
area='Total';
endcomp;
compute after;
state='Grand';
area='Total';
endcomp;
run;
ods html close;
ods listing;

********************************************

Generate graphs using Base SAS Procedures:

We can generate graphs using 2 components.
Base SAS
SAS/Graph

Chart Procedure:
generates charts.

Types of charts:
1. Horizontal charts
2. Vertical charts
3. Pie charts
4. Block charts

hbar statement: Generates horizontal charts.
vbar statement: Generates vertical charts.
block statement: generate block charts.
pie statement: generate pie charts.

Note: SAS default generates charts using frequency values.

Generate horizontal charts:

proc chart data=user1.ae;
hbar actype;	
run;

Customization:
nostats option: suppress statistical table from the report.
symbol option: enable to specify the symbols to generate charts.
axis option: It controls scaling on x and y-axis.
axis= <origin> to <end> by <interval>;

midpoints option: It controls scaling on x or y-axis.
midpoints=<value1> <value2> ......... <valuen> ;

 



proc chart data=user1.ae;
hbar actype/nostats symbol='$' 
axis=0 to 10 by 1;
where actype ~= 'Null';
run;

Generate vertical charts:
percentage of subjects reported different type of adverse events.

type option: enable to specify statistical measurement to generate charts.

type=freq/cfreq/percent/cpercent/sum

proc chart data=user1.ae;
vbar actype/type=percent
axis=0 to 100 by 10;
where actype ~= 'Null';
run;

Note: for vertical charts, no need to use nostats option because statistical table is not generated by default for vertical charts.

Generate the charts using sum:
Sumvar option: enable to specify analysis variable for generating sum values.

proc chart data=user1.customers;
hbar custno/nostats type=sum
sumvar=goods axis=0 to 120 by 5;
run;

Generate the charts using cross-tabulate frequency analysis:

Task: Number of operations by customer and product-wise.

chart variables: custno prdcode
Here, we have to use group or subgroup option.

Group option: enable to specify grouping variable.

If chart variable is subgrouping variable, then we should use group option.
If we use group option, then subgroup variable result is reported in multiple bars.

 

Subgroup option: enable to specify subgrouping variable.

If chart variable is grouping variable, then we should use subgroup option.
If we use subgroup option, then subgroup variable result is reported in single bar with different patterns or symbols.

 


Using group option:


proc chart data=user1.customers;
hbar prdcode/nostats group=custno;
run;

proc chart data=user1.customers;
vbar prdcode/group=custno;
run;

Using subgroup option:


proc chart data=user1.customers;
hbar custno /nostats subgroup= prdcode;
run;

proc chart data=user1.customers;
vbar custno /subgroup= prdcode;
run;

Control scaling using Midpoints:
Number of operations by monthly-wise.

proc chart data=user1.customers;
hbar month/ nostats midpoints=1 2 3;
run;

Generate the charts from the summary table:
To report average sale by state-wise.

 



* Create Summary Table;
proc sql;
create view sumz1 as
select state, round(mean(sale)) as Avgsale
from user1.salesdata group by state;
quit;

*Generate Chart ;
proc chart data=sumz1;
vbar state/type=sum sumvar=avgsale
axis=0 to 20 by 1;
run;




Generate Block Chart:

proc chart data=user1.customers;
Block prdcode;
run;

proc chart data=user1.customers;
Block prdcode/group=custno;
run;

Generate Pie Charts:

proc chart data=user1.customers;
Pie prdcode;
run;

Plot Procedure:
Generates plots.

Proc plot data=<data set>;
plot <y axis var>*<x axis var>/<options>;
Quit;

Default plots are generated using frequency values.

Options:
haxis option: Controls scaling on x-axis.  
haxis=<origin> to <end> by <interval>;

vaxis option: Controls scaling on y-axis.  
vaxis=<origin> to <end> by <interval>;

Task: Number of operations by customer and product-wise.

proc plot data=user1.customers;
plot prdcode*custno;
Quit;
Default plotting points are Letters like A B C D. These letters report frequency.
A-1 B-2 C-3 D-4.

Generate plots from the summary table or passing variable values as plotting points:

proc sql;
create view Custfreq as 
select Custno, Prdcode, count(custno) as frq
from user1.customers group by custno, prdcode;
Quit;

* Generate Plots;
proc plot data=custfreq;
plot prdcode*custno$frq;
Quit;

**********************************************

Generate the charts using SAS/Graph Procedures:

gchart procedure: Generate the charts in Graph window.

GOUT=<libref.>output-catalog
specifies the SAS catalog in which to save the graphics output that is produced by the GCHART procedure. If you omit the libref, SAS/GRAPH looks for the catalog in the temporary library called WORK and creates the catalog if it does not exist.

hbar statement: Generate the horizontal charts in 2D format.

hbar3d statement: Generate the horizontal charts in 3D format.

vbar statement: Generate the vertical charts in 2D format.
vbar3d statement: Generate the vertical charts in 3D format.

Pie statement: Generate the Pie charts in 2D format.
Pie3d statement: Generate the Pie charts in 3D format.
Block statement: Generate block charts.

proc gchart data=user1.customers;
hbar prdcode;
run;
quit;

Customization: This process can be done using gchart procedure options, Global graphical options and Statements.

using gchart procedure options:

noframe option: suppress frame in graph window.
cframe: Assign the color for frame.
space option: It controls the space between the bars(1-8cm).

width option: It controls the width of the bars(1-8cm).

woutline: Controls width for outline of the bars(1-8mm).

coutline: Assign the color for outline of the bars.

shape: It controls the shape of the bars.

shape=block/cylinder/prism/star

Autoref: Generate refereneces lines.

ref: Passing the values to generate references lines.

Cref: Assign color for references line.

Nozero: Suppress Zero result in Graph.

proc gchart data=user1.customers;
hbar3d prdcode/nostats cframe=lightgreen
space=3 width=2 woutline=2 coutline=white shape =prism ref=2 4 6 8 cref=black;
run;
quit;

Customization using Global Graphical options and statements:

options:
cback: Assign color for graph window.
hsize: It controls the horizontal size of the graph(1-8inch).
vsize: It controls the vertical size of the graph(1-8inch).

Graphical global Statements:

Pattern statement: Assign color for bars.

Axis statement: Make specifications for controlling graphical elements on x- or y-axis.

Graphical Elements	Options
color	C
font style	font
labeling	Label
labeling for ref line	reflabel
Scaling	Order/Value

Order: It controls scaling in numeric format for numeric variable.
order=<origin> to <end> by <>interval>;

Value option: It controls scaling in character format for character variable or numeric variable.

Raxis, Maxis, Gaxis:
These three options belong to gchart procedure. These options control x or y axis using some required which are made by the axis statement.

 


goptions Statement: used for declaring graphical Global options.

goptions cback=black hsize=7inches vsize=4inches;
pattern c=green;

axis1 c=white label=(c=red font='Times of Roman' 'No of Subjects') order = 0 to 12 by 1;

axis2 c=white label=(c=red font='Times of Roman' 'Gender') value= ('Female' 'Male');

Title c=yellow height=1 'Number of Subjects by gender';

Proc gchart data=sashelp.class;
hbar3d sex/nostats cframe=lightblue coutline=white shape=cylinder ref=2 4 6 8 cref=black
Raxis=axis1 maxis=axis2;
run;
quit;


Generate graphs using cross tabulate analysis:

In these cases, we have to use grouping and subgrouping option.

Task: Number of operations by customer and product-wise.

Using group option:

Reset option: To reset all global graphical requirements with default values.

Goptions reset=all;
proc gchart data=user1.customers;
hbar3d prdcode/nostats group=custno;
Run;
Quit;


Inside/outside option: Display statistical results inside/outside of the bars.

inside/outside=freq/cfreq/percent/cpercent/sum


Customization in vertical bars:

goptions cback=black;
axis1 c=white label= ( "Number of operations" )
order = 0 to 10 by 1;
axis2 c=white label= ( "Product Code" );
axis3 c=white label= ( c=yellow "Customer Number");

Pattern c=purple;
proc gchart data=user1.customers;
vbar3d prdcode/group=custno noframe shape=cylinder 
Raxis=axis1 gaxis=axis3 maxis=axis2 outside=freq ctext=white;
run;
quit;

Using Subgrouping option:

goptions reset=all;

proc gchart data=user1.customers;
hbar3d custno/nostats subgroup=prdcode;
run;
quit;

Customization:

goptions cback=lightgray;
axis1 c=white label=( "No of Customers" )
order=0 to 12 by 1;
axis2 c=white label=( "Customer Number" );
pattern1 c=red;
pattern2 c=green;
pattern3 c=blue;
proc gchart data=user1.customers;
hbar3d custno/nostats subgroup=prdcode noframe 
shape=cylinder 
raxis=axis1 maxis=axis2 ctext=white;
run;
quit;


Report Scaling in percentage format:

Percentage of operations by customer-wise.

goptions cback=lightgray;
axis1 c=white label=( c=yellow font='Elephant' "Percentage of operations" )
order=0 to 100 by 10
value=('0%'  '10%' '20%' '30%' '40%' '50%' '60%' '70%' '80%' '90%' '100%' ) 
reflabel=(c=orange 'Target');
axis2 c=white label=( c=yellow font='Elephant' "Customer Number" );

pattern1 c=red;
pattern2 c=green;
pattern3 c=blue;
proc gchart data=user1.customers;
vbar3d custno/type=percent noframe  shape=cylinder 
raxis=axis1 maxis=axis2 subgroup=custno 
ctext=white outside=percent woutline=2 coutline=white ref=60;
run;
quit;

********************************************
Generate Pie Charts:

proc gchart data=user1.customers;
pie prdcode;
run;
quit;

Custozation:
goptions cback=black;
pattern1 c=red;
pattern2 c=green;
pattern3 c=orange;

proc gchart data=user1.customers;
pie3d prdcode/woutline=2 
coutline=white ctext=white explore='P050';
Run;
Quit;

Explore option: Cut the slice from Pie chart.

Generate Multiple pie charts:
Number of operations by customer and product-wise.
In above application, we have to use group option.
group=custno;

goptions cback=black;
pattern1 c=red;
pattern2 c=green;
pattern3 c=orange;

proc gchart data=user1.customers;
pie3d prdcode/woutline=2 
coutline=white ctext=white explore='P050'
group=custno;
Run;
Quit;
****************************************
Plots:
Gplot procedure: Generate Plots.
Types of Plots:
 


 


 




/* Source data */
Data Sbp_results;
input Pid $ Time $ Bsbp Asbp;
Cards;
P101 1Day	260	254
P101 2Day	254	240
P101 3Day	240	231
P101 4Day	231	220
P101 5Day	220	230
P101 6Day	230	190
P101 7Day	190	175
P101 8Day	175	161
P101 9Day	161	140
;


Generate Bubble plot:
Task: Report progress of the Asbp Time-wise.

x-axis : Classification Variable
y-axis : Analysis Variable

goptions reset=all;
proc gplot data=Sbp_results;
plot Asbp*time;
Run;
Quit;

Customization:
Symbol statement: Make a specification or make a requirement to control graphical elements for plotted symbols.

Elements	Options
color	C
width	W
Symbols	Value=Plus/star/circle/triangle/Anchor
Lines	interpol=line/join/spline/needle/step


Autohref: Generate vertical references lines according to x-axis.

href: Enable to specify values to generate vertical references lines. 
chref: Assign color for vertical references lines.

 


Autovref: Generate horizontal references lines according to y-axis.

vref: Enable to specify values to generate horizontal references lines.

cvref: Assign color for horizontal references lines.
 


goptions cback=black;
axis1 c=white label=('After SBP')
order=100 to 300 by 10;

axis2 c=white label=('Study Time')
reflabel=('Check Body System');
Symbol c=yellow value=star w=4;

proc gplot data=sbp_results;
plot asbp *time/noframe 
haxis=axis2 vaxis=axis1 href='5Day' chref=red;
run;
quit;

Generate Line plots:


goptions cback=black;
axis1 c=white label=('After SBP')
order=100 to 300 by 10;

axis2 c=white label=('Study Time')
reflabel=('Check Body System');
Symbol c=yellow value=star w=4 interpol=spline;

proc gplot data=sbp_results;
plot asbp *time/noframe 
haxis=axis2 vaxis=axis1 href='5Day' chref=red;
run;
quit;

Generate Step Plot:


goptions cback=black;
axis1 c=white label=('After SBP')
order=100 to 300 by 10;

axis2 c=white label=('Study Time')
reflabel=('Check Body System');
Symbol c=yellow value=star w=4 interpol=Step;

proc gplot data=sbp_results;
plot asbp *time/noframe 
haxis=axis2 vaxis=axis1 href='5Day' chref=red;
run;
quit;

Generate Multiple plots in graph or Generate comparison Plots:

To report progress of the Before and After SBP Time-wise.

 


Overlay option: Generate Multiple plots in graphs.

goptions reset=all;
proc gplot=sbp_results;
plot Bsbp*time Asbp*time/overlay;
run;
quit;

Customization:

goptions cback=black;
axis1 c=white label=(c=yellow
font='Elephant' 'Before-After SBP')
order=100 to 300 by 10;
axis2 c=white label=(c=yellow
font='Elephant' 'Study Time');
Symbol1  c=red value=A  w=3 interpol=spline;
Symbol2  c=green value=B  w=3 interpol=spline;

proc gplot=sbp_results;
plot Bsbp*time Asbp*time/overlay noframe
Vaxis=axis1 haxis=axis2;
run;
quit;

Generate Bar Line Plot:

goptions cback=black;
axis1 c=white label=(c=yellow
font='Elephant' 'Before-After SBP')
order=100 to 300 by 10;
axis2 c=white label=(c=yellow
font='Elephant' 'Study Time');
Symbol1  c=red value=B  w=8 interpol=needle;
Symbol2  c=green value=A  w=3 interpol=spline;

proc gplot=sbp_results;
plot Bsbp*time Asbp*time/overlay noframe
Vaxis=axis1 haxis=axis2;
run;
quit;

Generate Left and Right Side y-axis:


 
goptions cback=black;
axis1 c=white label=(c=yellow
font='Elephant' 'Before SBP')
order=100 to 300 by 10;
axis2 c=white label=(c=yellow
font='Elephant' 'Study Time');
Symbol1  c=red value=B  w=8 interpol=needle;
axis3 c=white label=(c=yellow
font='Elephant' 'After SBP')
order=100 to 300 by 10;
Symbol1  c=red value=B  w=3 interpol=spline;
Symbol2  c=green value=A  w=3 interpol=spline;

proc gplot=sbp_results;
plot1 Bsbp*time/noframe Vaxis=axis1 haxis=axis2;
plot2 Asbp*time/overlay  Vaxis=axis3;
run;
quit;

Export the graphs into third party files:

Supporting files are html, bmp(bitmap image), gif, png(portable network graph) and rtf.

Upload graph into html, bmp, gif/png files:

device option: enable to specify device name to write the body of the graph into third party file.

gsfname: enable to specify file reference.

device=html/bmp/gif/png/rtf

goptions reset=all;
filename ft1 'E:\cust.png';
goptions device=png gsfname=ft1;
proc gchart data=user1.customers;
vbar3d custno;
run;
quit;

Generate graph in Rtf File:

goptions reset=all;
filename ft2 'E:\cust.png';
ods rtf file=ft2;
proc gchart data=user1.customers;
vbar3d custno;
run;
quit;
ods rtf close;

Store Graph catalogs in required ocall library:

Gout option: stores graphs catalogs in required autocall library.

gout=<libref>.<catalog name>;

Default autocall library is work library.
default catalog name is GSEG.

/* Create Library for storage of Graph catalog */

Libname Ugraph ' E:\User-Graphs';

proc gchart data=sashelp.class gout=Ugraph.graphs; 
vbar3d sex;
run;
quit;

proc gchart data=user1.customers gout=Ugraph.graphs; 
vbar3d custno;
run;
quit;

Embedded Graph with Report:

Table+ Graph=Dashboard Report.

Concatenation between table to graph:

Number of operations by customer-wise.

axis1 c=black label=(font='Elephant' 'Number of Operations')
order=0 to 12 by 1;
axis2 c=black label=( font='Elephant' 'Product Code');
Pattern1 c=green;
Pattern2 c=red;
Pattern3 c=orange;

proc gchart data=user1.customers gout=work.graphs;
vbar3d prdcode/noframe shape=cylinder Raxis=axis1 Maxis=axis2 Subgroup=prdcode woutline=2 coutline=white descending;
run;
quit;

/* Embedded graph with report */
ods listing close;
ods html file='e:\prd_freq.html' gpath='e:\';
proc report data=user1.customers nowd style(header)={foreground=white background=red}
style(column)={foreground=white background=green font_weight=bold};
define prdcode/group order=freq descending 'Product Code';
define N/'Number of operations';
compute before _page_;
call define (_row_, 'Grseg', 'Work.graphs.gchart');
endcomp;  /* 'Grseg' is the attribute name of the graph */
run;
ods html close;
ods listing;

Note: Gpath location must be same as location of the file.
**************************************


Macros
	
It is one of the component in Base Sas as well as advanced programming language.
Using macros, we can develope macro applications.

Uses Of  Macro applications:
1. Reduce, Customize, and develope reusable applications.
2. Macro applications require two units in SAS.

Macro processor(Compiler)
Macro language

Macro processor(Compiler): It is part of the SAS.
Macro language: Communicate with Macro processor and develop macro applications.

Options nomacro; /* deactivate */
Options macro; /* reactivate */

Macro applications are developed by the macro block.

%Macro <Macro name>;
<sas statements>;
<sql statements>;
<macro statements>;
%Mend;

%  : It is a Macro statement reference.

Rules for Macro names: As similar as rules for dataset names.

Macro catalog:
It contains compile code of the macros.
Macro catalog is default stored in work library.
SAS default assigns macro name as the catalog name.

Macro call:
Calls the macro catalogs for execution.

%<Macro name>;

Relation between macro application to Macro catalog and Macro call:

 

%macro print;
proc print;
run;
%mend;

/* Calling */
Data Emp;
input Eid Des $;
cards;
101	Tester
102	Progmer
;

%print;

Data Mh;
input Subid Dose $;
cards;
101	05mg
102	10mg
;
%print;


Macro concepts:

Macro variables
Passing values to Macro through parameters.
Macro quoting functions
Macro functions
Macro Expressions
Interface Functions
Autocall Macros
Stored macros

Macro variables: Macro is a character based language. So, SAS treats all macro variables as character variables.

Default value is space.

We can store up to 32,767 characters within the macro variable.

Macro variable values are backend stored in symbol tables.

These Macro Variables are two types.
1. System defined Macro Variables
2. User defined Macro Variables

1. System defined Macro Variables: These variables are created by the SAS and values are assigned by the SAS.
These variables start with 'Sys' keyword.

2. User defined Macro Variables: These variables are created and values are assigned by the user.

These Variables are two types.
i. Global Macro variables
ii. local Macro variables
i. Global Macro variables: These variables are created and can be used anywhere within the application.
These variable values back end load in global symbol tables.
ii. local Macro variables: These variables are created and can be used inside of the macro application.
These variable values back end load in local symbol tables.
*********************************************************

Create Global Variables:

%Global Statement:
Creates global macro variables that are available during the execution of an entire SAS session.

Syntax:
%GLOBAL macro-variable-1 <...macro-variable-n>;


%LOCAL Statement:
Creates local macro variables that are available only during the execution of the macro block where they are defined.
This statement should be used only inside of the Macro Block.

Syntax: 
%LOCAL macro-variable-1 <...macro-variable-n>;


%LET Statement:
Creates a macro variable and assigns it a value.

Syntax:
%LET macro-variable =<value>;

Note: If %Put statement is written inside the macro block, then sas creates and assigns the Local macro variable.
If %Put statement is written outside the macro block, then sas creates and assigns the Global macro variable.


Note: Do is a registration word for SAS Macros and cannot be used as a Macro name.

%Put Statement:
Display text or macro variable values in log window.
Writes text or macro variable information to the SAS log.


Syntax:
%PUT <text | _ALL_ | _AUTOMATIC_ | _GLOBAL_ | _LOCAL_ | _USER_>;

no argument:
places a blank line in the SAS log.

&(Ampersand):
It is a macro variable reference and resolve the macro variables(get the values from the macro variables).

&<macro variable>.;
&&<macro variable>;
&<macro variable>;

/* Create global macro variables */

%global var1 var2;
%let var1=101;
%let var2=Female;

/* Using outside of the Macro block */
dm log 'Clear';
%put values are &var1. &var2;
/* Using inside of the Macro block */
%Macro Glb;
dm log 'Clear';
%put values are &var1. &var2;
%Mend;
%Glb;


Work with Local Macro variables:

%Local Statement: It creates local macro variables.

This statement should be used only inside of the Macro Block.

Syntax: 
%LOCAL macro-variable-1 <...macro-variable-n>;


%Macro loc;
%local var3 var4;
%let var3=dm;
%let var4=Ae;
Dm log 'clear';
%put Loc variable values are &var3 &var4;
%Mend;	

%LOC;

Create Global and Local macro variables using %Let Statements:

%Let Mvar1=201;
%Macro Loc2;
%let mvar2=empid;
%Mend;

%loc2;


******************************************
Interview Purpose:

To use same name for global and local macro variables:

%let mvar3=Vs;
%Macro Loc3;
%Let mvar3=Mh;
%Mend;

%Loc3;

%Put value is &Mvar3;

Note: In Above application, mvar3 acts like a global macro variable. But its value is Mh. because the global variable value can be changed anywhere in the macro or outside the macro. The latest value will be present in the macro variable.

%let mvar4=Vs;
%Macro Loc4;
%local mvar4;
%Let mvar4=Mh;
%Mend;

%Loc4;

%Put value is &Mvar4;

Note: In Above application, mvar4 outside  acts like a global macro variable and inside  acts like a local macro variable.
outside value is Vs and inside value is Mh.

Passing values to Macro through the parameters:
SAS treats these parameters like local macro variables. These parameters can be defined after macro name within the brackets.

These paracters capture the values from the macro call and SAS uses those values for execution.

%macro print(dname);
proc print data=&dname;
Run;
%mend;

/* Calling */
%print(sashelp.class);
%print(sashelp.citimon);
%print(user1.customers);


These parameters are two types.
1.Positional parameters
2.Keyword parameters

1.Positional parameters: Passing values using position of the variables.

2.Keyword parameters: Passing values using name of the variables.

Work with Positional parameters:

%macro <macro name>(var1, var2, ..... varn);

%Mend;

/* Calling */
%<macro name>(var1, var2, ..... varn);


Develop Macro applications for sorting using positional parameters:

%macro sort (dname, new, svar);
proc sort data=&dname  out=&new ;
by &svar;
run;
%Mend;


/* calling */
%sort(sashelp.class,demo1, age);
%print(demo1);

%sort(sashelp.class,demo2, descending age);
%print(demo1);

/* Deleting Duplicates */
Data Emp;
input eid des $;
cards;
101	Tester
102	Analyst
103	Progmer
103	Manager
;

%sort(emp,emp_clean nodupkey,eid);
%print(emp_clean);

Develop macro applications for import procedure:

%Macro impxl (file, dname, sh, Gt);
proc import datafile=&file out=&dname dbms=excel replace;
sheet="&sh";
getnames=&gt;
run;
%mend;

**********************************************
Note: If we have to use filename statement in calling the macro, then no need to put the file variable in double quotes.

If we want to use file name directly while calling the macro, then we need to put the file variable in double quotes.
******************************************

/* Calling */
filename file1 "e:\sas\source\xls\data1.xls";

%Impxl(file1, dm1, Demo1$);
%Impxl(file1, dm2, class$, no);
%Impxl(file1, dm3, Demo1$A1:E8);
%Impxl(file1, dm4(keep=name age), Demo1$);
%Impxl(file1, dm5(where=(sex="M")), Demo1$);

Develop the macro application to upload the data for excel:

%Macro expxl(file, dnam, sht);
Proc export outfile=&file data=&dnam dbms=excel replace;
sheet="&sht";
run;
%mend;

/* Calling */
filename file2 "e:\demodata.xls";
%expxl(file2, sashelp.class, demo);
%expxl(file2, sashelp.class(keep=name age where=(Age>=14) ), demo2);

Work with Keyword parameters:

%macro <macro name>(var1=, var2=, ..... varn=);

%Mend;

/* Calling */
%<macro name>(var1=<value>, var2=<value>, ..... varn=<value>);

Note:
Keyword parameters allow us to provide the default values for the parameters.
example:

%macro print (dsnam=sashelp.class, var=name age sex height);
proc print data=&dsnam;
var &var;
%put dataset:  &dsnam, variables: &var .;
run;
%Mend;

/* Calling */
%print;

Develop Macro application for sorting using keyword parameters:

%Macro ksort (ename=, new=, svar=);
proc sort data=&ename out=&new;
by &svar;
run;
%mend;

%ksort (ename=sashelp.class, new=dm1, svar=age);
%ksort (ename= sashelp.class, new=dm2, svar=descending age); 

Develop the Macro application to run the filter by the where statement:

%macro where(new, ename, cond);
data &new;
set &ename;
where &cond;
run;
%Mend;

/* Calling */
%where (dm3, sashelp.class, age>=14);
%print(dm3);

Macro quoting Functions: Mask special characters at compile and execution time because macro is a character based language and we are using some special characters as parameter values, but SAS recognizes it as a macro syntax.

These functions are four types:
1. %STR
2. %NRSTR
3. %BQUOTE
4. %NRBQUOTE

1. %STR : Mask the special characters at compile and execution time. Some times, it masks unmatched quotations and unmatched brackets except macro triggers( % &).

2. %NRSTR : Mask all the special characters, unmatched quotations and unmatched brackets at compile time including macro triggers( % &).

3. %BQUOTE : Mask the special characters, unmatched quotations and unmatched brackets at execution time except macro triggers.

4. %NRBQUOTE : Mask the special characters, unmatched quotations and unmatched brackets at execution time including macro triggers.

%where (dm3, sashelp.class, %str(sex='M'));
%print(dm3);

%where (dm4, sashelp.class, %nrstr(sex='M' & age>=14));
%print(dm4);

Mark the special characters at execution time:

%Macro print_title (dname, text);
proc print data=&dname;
title "&text";
run;
%mend;

/* Calling */
%print_title (sashelp.buy, Credit Information);
/* Calling */
%print_title (sashelp.class, %bquote(Demographic's Information));

Develop Macro application for merge process with relation:

%Macro Merge(dname, enames, Mvar);
Data &dname;
Merge &enames;
by &mvar;
run;
%mend;

/* Calling for one to one merge */

data emp;
input eid des $;
cards;
101 tester
102 progmer
;
data salaries;
input eid salary;
cards;
101	2000
102	4000
;
%merge (emp_salaries, emp salaries, eid);
%print_title (emp_salaries);
Trace out Matching and non-matching data:
Table names Ae, Adr.
/* Matching data */
Libname oralib1 oracle user=rawdata password=rawdata path='orcl';


%merge (Match, oralib1.ae(in=a) oralib1.adr(in=b), %nrstr( pid; if a=1 & b=1));
%print_title (match);


/* Non-Matching data */
%merge (nonmatch, oralib1.ae(in=a) oralib1.adr(in=b), %nrstr( pid; if a=0 | b=0));
%print_title (nonmatch);

Develop Macro applications for SQL:
Order by clause:

%macro order(dnam, svar);
proc sql;
select * from &dnam order by &svar;
quit;
%mend;

/* Calling */
%order (sashelp.class, age);
%order (sashelp.class, age desc);
%order (sashelp.class, %str(sex, age desc));

Where Clause:
%Macro where (dnam, cond);
proc sql;
select * from &dnam where &cond;
Quit;
%mend;

/* Calling */
%where(sashelp.class,  age>=14);
%where(sashelp.class, %str(sex='M'));

Develop Macro applications for frequency procedure:

%Macro freq(dnam, fvar,other);
proc freq data=&dnam;
tables &fvar;
&other;
run;
%mend;

/* Calling for one-way */
%freq(sashelp.class, sex );
%freq(sashelp.class, sex/nocum);

proc format;
value $sx 'F'='Female' 'M'='Male';
run;

%freq(sashelp.class, sex/nocum, format sex $sx.);

/* cross tabulate */

%freq(sashelp.class, sex*age, format sex $sx.);
%freq(sashelp.class, sex*age/norow nocol nopercent, format sex $sx.);


Develop Macros for Means procedure:

%macro means (dnam, class, avar, other);
proc means data=&dnam;
class &class;
var &avar;
&other;
run;
%Mend;

/* Calling */
%means (user1.salesdata, state,sale); 
%means (user1.salesdata, state area,sale);
%means (user1.salesdata printalltypes, state area,sale);
%means (user1.salesdata, state area prdcode,sale, types state*prdcode state*area);
%means (user1.salesdata noprint, state area,sale, output out=sumz1);

Mixed parameters:
Within the macro application, we are using positional parameters and keyword parameters.

In these cases, first we have to use all positional parameters, next, we have to use all keyword parameters.

%macro <macro name>(a1, a2, a3, a4=, a5=);

%mend;

Macro functions:
Macro functions are string functions. These functions can be used inside or outside of the macro block.

%Length function:
It returns the length of the string/macro variables.

%length(<macro var>);

%let var= Demo Lab Medi Adevents Vs;

/* Report */
dm log 'clear';

%put length is %length(&var);

/* Store the values in another variable */
%let var1=%length(&var);


%put length is &var1;

%index function:
It returns the position of the character or word.

%index(<macro var>, char/word)

If character or word is repeated multiple times within the string, Then SAS returns position of the first occurrence.

If the character or word not available in string, Then SAS returns '0'.

dm log 'clear';
%put position is %index(&var, s);

%scan function: It returns the required word from string/macro variable.

%Scan (<macro variable>, <position>, <dlm>)


* Position values are positive then SAS returns words from  left to right.

* If Position values are negative then SAS returns words from  right to left.

If we submit without Delimiter value then scan functions as recognize any special character as a delimiter.

* Scan function returns in string up to 32,767 characters within the word, but load in new variable upto 200 characters.

**************************
scenario for %scan:


%let var1=Akula Srinivas SAS Programmer;

%let des=%scan(&var1, 3   ) %scan(&var1, 4   );

%let nam=%scan(&var1, 1   ) %scan(&var1, 2   );
%put &des:&nam;


var1 contains 4 words separated by blanks.
first word position is 1.
position of the remaining words are 2,3,4 respectively.

&nam contains first two words.
&des contains last two words.

**************************

dm log 'clear';
%put word is %scan(&var, 2);

%Substr: It returns part of the string.

%Substr (<macro variable>, <start position>, <number of chars>)

* If we submit without last argument, Then SAS returns up to end.

dm log 'clear';
%put string is %substr(&var, 3,8);

%upcase:
It returns the macro variable value in uppercase.

%upcase(<macro var>)

dm log 'clear';
%put upper case is %upcase(&var);

%Lowcase:
It returns the macro variable value in lowercase.

%lowcase(<macro var>)

dm log 'clear';
%put lower case is %lowcase(&var);

Note: %lowcase is a system defined macro and returns the macro variable value in lower case.

Location of the system defined macros:

' C:\Program Files\SAS\SASFoundation\9.2(32-bit)\core\sasmacro'

%cmpres: It is a system defined macro and removes leading/trailing spaces/blanks from the macro variable.

dm log 'clear';
%put result of trim is is %cmpres(&var);

Macro options:
Macro options are global options.

Uses:
Using macro options, to debug the macros.9

Merror: It is a global option and default running and print message in log window whenever macro catalog is not resolved.

Change specifications: nomerror.

serror: It is a global option and default running and print message in log window whenever macro variable is not resolved.

Change specifications: noserror.

mprint option: It traces out macro catalog and print the execution code in log window.
 
default is: nomprint.

options mprint;
%freq(sashelp.class, sex);


mprintnest option: It traces out nested macro catalogs and display the execution code in log window.


Nested catalogs:
Macro Block or Macro call is existed within the macro.

%Macro <macro name>;
%Macro <macro name>;

%Mend;
%Mend;

/* Or */
%Macro <macro name>;
%<macro name>;

%Mend;

%macro sprint (var1, var2, var3);
%sort (&var1, &var2, &var3);
%print (&var2);
%mend;

/* Calling */
options mprint;
%sprint(sashelp.class, dm1, age);

options mprintnest;
%sprint(sashelp.class, dm1, age);

default is nomprintnest.


symbolgen:
It traces out macro variable and print how the macro variable is resolved log window.

default is nosymbolgen.

options symbolgen;
%sort(sashelp.class, dm2, age);

mlogic: It traces out logical blocks(loops) and display message in log window, whether loop is continued or terminated.
default is nomlogic.

mlogicnest: It traces out nested loops and display message in log window, whether loop is continued or terminated.
default is nomlogicnest.

Macro expressions:
These are three types.

1.Arithmetic expressions
2.Logical expressions
3.Text Expressions


1.Arithmetic expressions: Run the arithmetic operations by the macro variables.

Arithmetic expressions temporary converts macro variable values character to numeric. 

These expressions can be used inside or outside of the macro block.

%eval function: Run the arithmetic operations by the characters.

characters are 23,345,6789.
	
%sysevalf function: Run the arithmetic operations by the period of characters.

period of characters are numbers with decimal places.

Using characters:

%let var1=23;
%let var2=45;
%let var3=7;
%let var4=%eval((&var1 + &var2)*&var3);
%put the result is &var4;

Using period of characters:

%let var1=23.45;
%let var2=45.342;
%let var3=7.5;
%let var4=%sysevalf((&var1 + &var2)*&var3);
%put the result is &var4;


Logical expression:
Logical expressions are 
%if
%goto
%do %while
%do %until
%do loop

%if statement:
Run the operations condition based.

Uses:
Run the code within the macro conditional based.

Develop the macro applications for excel import or exporting:

%Macro xlimpexp(rq, file, dnam, sh, gt);
%If %upcase(&rq)=IMPORT %then %do;
proc import datafile="&file" out=&dnam dbms=excel replace;
sheet="&sh";
Getnames=&gt;
run;
%end;
%Else %If %upcase(&rq)=EXPORT %then %do;
proc export outfile="&file" data=&dnam dbms=excel replace;
sheet="&sh";
run;
%end;
%Mend;

/* Calling for importing */

options mprint;
%xlimpexp(import, e:\sas\source\xls\data1.xls, dm1, demo1$);

/* Calling for exporting */

%xlimpexp(export, e:\clinic.xls, dm1, cdata);

%Goto: Call the label conditional based.

Label: Run group of statements.




%Macro report (rq, dnam, fcls, avar, other);
%If %upcase(&rq)=PRINT %then %goto case1; 
%else %If %upcase(&rq)=FREQ %then %goto case2;
%else %If %upcase(&rq)=MEANS %then %goto case3;
%case1:
proc print data=&dnam;
&other;
Run;
%goto cls;
%case2:
proc freq data=&dnam;
tables &fcls;
&other;
Run;
%goto cls;
%case3:
proc means data=&dnam;
class &fcls;
var &avar;
&other;
Run;
%goto cls;
%cls: %mend;


/* calling for print */
%report(print, sashelp.class);
%report(print, sashelp.class, , , var name age);

/* calling for freq */
%report(freq, sashelp.class, sex);
%report(freq, sashelp.class, sex/nocum);

/* calling for means */
%report(means, sashelp.class, sex, age height);

/* calling neither of the rq */

%report(rank, sashelp.class, sex);

%do %while:
Run the loop as long as the condition is true or Until the Condition is False.

%do %until:
Run the loop as long as the condition is False or Until the Condition is True.

Uses: Run the code multiple times within the macro.


Develop the loop process for reporting:

%macro dwhreport (dnames);
%let i=1;
%do %while (&i<=5);
%let dset=%scan(&dnames, &i);
proc print data=&dset;
Title "&dset Information";
Run;
%let i=%eval(&i+1);
%end;
%mend;


/* Calling */
dm out 'clear';
options mprint;
%dwhreport( Adevents demo medi mh treatments);


Customization of the loops by the automation:

%macro dwhreport (dnames);
%let i=1;
%let dset=%scan(&dnames, &i, * );
%do %while (&dset ~=  );
proc print data=&dset;
Title "&dset Information";
Run;
%let i=%eval(&i+1);
%let dset=%scan(&dnames, &i, * );
%end;
%mend;


/* Or */

%macro dwhreport (dnames);
%let i=1;
%let dset=%scan(&dnames, &i, %str(*) );
%do %while (&dset ~=  );
proc print data=&dset;
Title "&dset Information";
Run;
%let i=%eval(&i+1);
%let dset=%scan(&dnames, &i, %str(*)  );
%end;
%mend;


/* Calling */
dm out 'clear';
options mprint;
%dwhreport( Adevents*demo*medi*mh*treatments);


%dwhreport(adevents*demo*medi*mh*treatments*sashelp.class*
sasuser.ta*sashelp.buy);



Develop the loop process for Excel Export:

%Macro Dwhexp(File, Dnames);
%let i=1;
%let dset=%scan(&dnames, &i, %str(*) );
%do %while (&dset ~=  );
proc export outfile="&File" data=&dset dbms=excel replace;
Sheet="&dset";
Run;
%let i=%eval(&i+1);
%let dset=%scan(&dnames, &i, %str(*)  );
%end; 
%mend;

/* Calling */
options mprint;
%dwhexp(D:\rawdata.xls, adevents*demo*medi*mh*treatments*sashelp.class*
sasuser.sasmbc*sashelp.buy);
	
Text Expressions:
Each macro statement is the text expression. Arithmetic and logical expressions are part of the text expressions.

Interface Functions:
Interface Functions are two types.

1.Macro Interface Functions
2.Datastep Interface Functions

1. Macro Interface Functions: Call sas function features in macro.
 

%sysfunc: It is a Macro Interface Function and Call sas functions in macro.

Using %sysfunc we can call datastep functions, arithmetic functions, aggregate functions and string functions.

Call Aggregate functions:

%let Var1=23;
%let Var2=34;
%let Var3=67;

%let Var4=%sysfunc(sum(&var1, &var2, &var3));
%let Var5=%sysfunc(mean(&var1, &var2, &var3));

%put values are &var4 &var5;


Call Datastep functions:

Develop the application to report dataset exists or not.

%Macro dex(Loc, Dname);
Libname user1 "&Loc";
%if %sysfunc(exist(user1.&Dname))=1 %then %do;
data _null_;
file print;
Put @05 "Message : &dname Exists";
Run;
%end;
%else %do;
data _null_;
file print;
Put @05 "Message : &dname doesn't Exist";
Run;
%end;
Libname user1 clear;
%mend;

/* Calling */
%dex(e:\sas\data, Adr);
%dex(e:\sas\data, emp); 
%dex(e:\sas\source\sasfiles, Salesdata);


Datastep Interface Functions:

Run the macro requirements by the dataset block during datastep execution time.

These functions are
Call symput
symget
symexist
symglobal
symlocal
call symdel
call execute

Call symput: Create Macro variable from the dataset variable during datastep execution time. If datastep variable contains multiple values, then sas stores last occurence in macro variable. These variable act like a global macro variables.

Call symput ('<Macro var>', <dataset var>)

			We can use single/double quotes.
Data Mh;
input Subid Dose $;
cards;
101	05mg
102	10mg
103	15mg
;
/* Create macro variable from sas variables */
data _null_;
set mh;
call symput("var1", subid);
call symput("var2", dose);
run;

%put values are &var1 &var2;

Call symputx: Create macro variable from the dataset variable.
Call Symput	Call Symputx
Numeric values as it is converted as character. Message print in log window, when we create macro variable from Dataset  variable which is a numeric variable.	Suppress these kind of messages in log window.
Numeric value load in scientific format in macro variable if variable is more than 12 digits.	Numeric value load in standard format up to 32 digits for window or unix. For mainframes 32,767 digits.
data _null_;
x=13566595944965546;
call symput("var3", x);
run;
%put value is &var3;
	data _null_;
x=13566595944965546;
call symputx("var4", x);
run;
%put value is &var4;



call symputx is available from SAS V9.2 Onwards.

Symget: Create dataset variable from the macro variable.

<dataset var>=symget('<macro var>')

Data Medi;
Pid =input(symget('var1'), best10.);
Drug =symget('var2');
run;

Note: If we create dataset variable from the macro variable, then default dataset length is 200.

*************************************************
Develop the applicaton change from baseline:

*************************************************

Symexist: It returns values to report macro variable existed or not.
It returns one or zero.
Default is 1.
1- Macro variable does exist.
0- Macro variable doesn't exist.

Symexist('<macro var>')

Data _null_;
file print;
if symexist('var8')=1 then 
put @5 'Message : Macro variable exists';
else put @5 'Message : Macro variable doesn't exist';
run;1

Symglobal: It returns values to report global macro variable existed or not.
It returns one or zero.
Default is 1.
1- Global Macro variable does exist.
0- Global Macro variable doesn't exist.

Symglobal('<macro var>')

Symlocal: It returns values to report local macro variable existed or not.
It returns one or zero.
Default is 1.
1- local Macro variable does exist.
0- local Macro variable doesn't exist.

Symlocal('<macro var>')

Note: This function should be used inside of the macro block.

symglobal and symlocal are available from SAS v9.1 onwards.

Call Symdel: Delete the macro variable from the SAS.

Note: All macro variables default deleted from SAS whenever we close the SAS session.

call symdel('<macro var>')
 
data _null_;
call symdel('var1');
run;

%Symdel statement:
Deletes the specified variable or variables from the macro global symbol table. 

call execute: call the macro from the dataset block and display execution code in log window.

call execute('%<macro name>');

%macro print(dname);
proc print data=&dname;
Run;
%mend;

/* Calling */
data _null_;
call execute ('%print(sashelp.class)');
run; 

Create Macro variable by the SQL:
Select statement and Into clause:

Create a macro variable from the dataset variable.
If dataset contains multiple values, then SAS stores first occurence in macro variable.

These variables act like a global macro variable.

Data Mh;
input subid Dose $;
cards;
101	05mg
102	10mg
103	15mg
;

proc sql noprint;
select dose into : ds from Mh;
quit;

%put value is &ds;

Create Multiple macro variables:

proc sql noprint;
select dose into : ds1 - :ds3 from Mh;
quit;

%put value is &ds1 &ds2 &ds3;

Store Multiple values in macro variables from dataset variables:

proc sql noprint;
select dose into : dst separated by '*' from Mh;
quit;

%put value is &dst;

Develop automation by the macro applications:

/* Collect distinct of Customers */

proc sql noprint;
select distinct(custno)  into :cslist separated by '*' from User1.customers;
quit;

%put value is & cslist;

%macro auto(dname, cvar);
%let i=1;
%let cs=%scan(&cslist, &i, %str(*));
%do %while (&cs ~=  );
ods listing close;
ods html file="D:\Trans-&Cs..html";
Title "&Cs. - Transaction Data";
Proc print data=&dname noobs
style(header)={foreground=white background=blue}
style(data)={foreground=white background=green font_weight=bold};
where &cvar="&cs";
run;
ods html close;
ods listing;
%let i=%eval(&i+1);
%let cs=%scan(&cslist, &i, %str(*));
%end;
%mend;

/* Calling */
options mprint;
%auto(user1.customers, custno);

*****************************************

Report List of the Macro variables:
_Global_ : Report list of the global macro variables with values.

%put _global_;

_Local_ : Report list of the local macro variables with values.

%put _local_;

This statement should be used inside of the macro block.

_USER_ : To report list of the user-defined macro variable(Global and local).

%put _user_;

If we use outside of the macro block, then it reports list of all the global macro variables.
If we use inside of the macro block, then it reports list of all the local macro variables.

_AUTOMATIC_ : 

Report list of the system defined /automatic macro variables. These variable names start with sys prefix.

%put _automatic_;

SYSDATE: It returns system date when SAS is opened.

%put &sysdate9;

SYSTIME : It returns system time in 24hr format.

%put &systime;

SYSLAST : It returns recently existed dataset name.
default is _NULL_.
If any dataset name does not exist, then it returns _null_.

%put &syslast;

SYSMSG : It returns system message.
default blank.
%put &sysmsg;

SYSUSERID : It returns user id.

%put &sysuserid;

SYSNCPU : It returns PC connected to number of CPUs.
%put &sysncpu;

SYSVER: It returns SAS system version number.

%put &sysver;

SYSVLONG: It returns version details.

%put &sysvlong;

****************************************

Autocall Macros: Save the macro application and use in multiple sessions.

Steps: Develop the macro application and save it. call the application in next session by the %include.


%include: It is a system defined macro and call the applications in different sessions for compile and execution.

%include '<File Path>';

This kind of process is called "Running SAS in non-interactive Mode".

%include 'D:\macro.txt';


 Note: All system defined macros are autocall macros. because all system defined macros run when we open the SAS environment.

Stored Macros:
Save the macro catalogs and use in multiple sessions.
This process is available from SAS V9.0 onwards.

sasmstore option: enable to specify library name for storage of macro catalogs. It is a global option.

mstored option: It is a global option and stores macro catalogs in required autocall library.

/* Create Library */
empty: Libname Umacro 'D:\Macro-cat';

/* Store Macro catalog in required library */
xoptions sasmstore=Umacro mstored;

%macro sort (dname, new, svar) /store source;
proc sort data=&dname  out=&new ;
by &svar;
run;
%Mend;


%macro print(dname) /store source;
proc print data=&dname;
Run;
%mend;


/* Calling */
options sasautos=umacro;
%sort(sashelp.class, demo1,sex);
%print(demo1);

sasautos option: It is a global option, and specify library name for calling of macro catalogs.

Using next Session:

%compstor: It is a system defined macro and collect compiled macro catalogs from physical location to SAS.

%compstor(pathname=<location>);

compstor macro create sasmacr as a library name and stores the macro catalogs and which is coming from physical location.

%copy : system defined macro and display source code of the macro application in log window.

%compstor(pathname=D:\macro-cat);
%copy sort/source;
%copy print/source;

options in %copy statement:
source/SRC
library/lib : specifies the libref where the macro is saved.
outfile/out : enable to specify the external file where the macro code has to be saved.

**** Interview *****
Parmbuff: It is a system defined parameter and pass the values to macro without using positional and keyword parameters.

sysbuffr: system defined macro variable and returns some value which is coming from parmbuff.

%macro report/parmbuff;
proc print data=&sysbuffr;
run;
%mend;

/* Calling */
%report (air);

Macro functions for masking the special characters for compile and execution:

%qscan(<var>  

%qscan(<var> is similar to %scan(%str(<var> .

%qupcase(<var>  

%qsubstr(<var>  

These functions run the requirements and mask the special characters at compile and execution time.


*******************************************


ESCAPECHAR Functions:

Syntax :
escape-character{function-name, <<arg-1 <arg-2...<arg-n>>>>}  

application:


Options Linesize=230  pagesize=280 nonumber nodate ; 
ods listing close;
ods rtf file='D:\sample listing8.rtf';
ods escapechar=	'^';
proc print data=sashelp.citiday ;
Title j=r 'Page  ^{THISPAGE}  of ^{LASTPAGE}';
Title2 'SAS Output';
var date snydjcm;
run;
ods rtf close;
ods listing ;


CAT Function:
Does not remove leading or trailing blanks, and returns a concatenated character string.

Syntax
CAT(item-1 <, ..., item-n>) 

Arguments
item 
specifies a constant, variable, or expression, either character or numeric. If item is numeric, then its value is converted to a character string by using the BESTw. format. In this case, leading blanks are removed and SAS does not write a note to the log. 


Function	Equivalent Code 
CAT(OF X1-X4)	X1||X2||X3||X4
CATS(OF X1-X4)	TRIM(LEFT(X1))||TRIM(LEFT(X2))||TRIM(LEFT(X3))||
TRIM(LEFT(X4))
CATT(OF X1-X4)	TRIM(X1)||TRIM(X2)||TRIM(X3)||TRIM(X4)
CATX(SP, OF X1-X4)	TRIM(LEFT(X1))||SP||TRIM(LEFT(X2))||SP||
TRIM(LEFT(X3))||SP||TRIM(LEFT(X4))




********************************************

Compare procedure:

The COMPARE procedure compares the contents of two SAS data sets, selected variables in different data sets, or variables within the same data set. 

syntax:
for comparing datasets :
proc compare	base=<base dataset>
			compare=<comparison dataset> <options>;
run;

printall option:
Produce a report of all the diffreneces.
 

SAS/STAT:

Mean is  the usual average.
Mean
Mean is what most people commonly refer to as an average. The mean refers to the number you obtain when you sum up a given set of numbers and then divide this sum by the total number in the set. Mean is also referred to more correctly as arithmetic mean.

  


The median is the middle value, so we will have to rewrite the list in ascending order.
The median is defined as the number in the middle of a given set of numbers arranged in order of increasing magnitude. When given a set of numbers, the median is the number positioned in the exact middle of the list when you arrange the numbers from the lowest to the highest. The median is also a measure of average. In higher level statistics, median is used as a measure of dispersion. The median is important because it describes the behavior of the entire set of numbers.

Mode :
The mode is defined as the element that appears most frequently in a given set of elements. Using the definition of frequency given above, mode can also be defined as the element with the largest frequency in a given data set.

For a given data set, there can be more than one mode. As long as those elements all have the same frequency and that frequency is the highest, they are all the modal elements of the data set.


**********************************************************

SAS/STAT

Using Data Analysis, we can report predictive values.
Before going to predictive analysis, first we have to find deviations or relations between the parameters.
Before testing deviations and relations, first we have to test data accuracy.
Data Accuracy is reported, data is available within the range or out of range.

Data accuracy can be reported using Distribution Analysis.
Normal Distribution Analysis: 
Mean ≅ Median ≅ Mode
Approximately equal.


Generate histograms: (vertical charts) and generate curves according to histograms, then curve shape is bell-shaped.
 

Generate Probability charts and generate linear lines. then, plotted values near to linear lines.
 
Histograms are generated using analysis variable and percentage.
 
Each bar represent group of values.

Normal Curve:
 

Normal curve is generated using mean and standard deviation.


Report the data accuracy using normal curve:

 

Peak point: 65% of the values plotted from the mean between 0 to 1 Standard Deviation.
Flank point: 60-70% of the data values plotted from the mean between 1 to 2 Standard Deviation.
In this stage, we have to do data cleaning. Data Cleaning means eliminate some highest and some lowest values.
These highest and some lowest values can be called extreme observations.
Tail point: 90-95% of the data plotted from the mean between 2 to 3 Standard Deviation.

Probability Plots: Probability Plot is generated using analysis variable and percentiles.
 

Univariate Procedure: 
Generates descriptive statistical analysis, histograms and probability plots.

Syntax: 
Proc univariate data=<dataset> <options>;
class <variables>;
var<variables>;
output out=<dataset>;
Histogram <variable>/<options>;
Probplot <variable>/<options>;
run;
quit;

Class statement: enables to specify classification variables(character/numeric).
Var Statement: enables to specify analysis variables(numeric only).
output out statement: It creates output dataset.
Histogram statement: Generates histograms using analysis variables.
Probplot statement: Generates probability plots using analysis variables.

Generate descriptive statistical analysis:
/* collect datasets */
libname user1 'e:\sas\source\sasfiles';
/* delete missing records */
data salesinformation;
set user1.sales;
where sales ne .;
run;
/*Generate descriptive statistical analysis*/
proc univariate data=salesinformation;
var sales;
run;

Univariate procedure generates 5 types of statistical tables.
1. Moments
2. Basic statistical measures
3. Tests for location
4. Quantiles
5. Extreme observations

Mean ≅ Median ≅ Mode
29		25	  20
Basic statistical measures contain mean, median, mode values .
Extreme observations contain some lowest and some highest values for data cleaning.
Quantiles split the data into quantiles.
Quantiles are  Q1
			Q2(Median or P50)
			Q3
These quantiles supporting to understand the data for data cleaning.
______________________________
Quantile      Estimate
100% 		Max           131
75% 		Q3              35
50% 		Median       25
25%		 Q1              18
0% 		Min               7
______________________________

According to Q1(first quantile), within the data, within the 100 values, 25% of the values plotted at 18 or less than 18.
According to Q3(third quantile), within the data, within the 100 values, 75% of the values plotted at 35 or greater than 35.
According to Q3 to maximum, comparison to eliminate highest values from the data.
************************************************
To report required statistical tables using objective names.

/* Find objective names */
Ods trace on;
proc univariate data=salesinformation;
var sales;
run;
Ods trace off;
/* Report required statistical tables */
Ods select BasicMeasures quantiles extremeobs;
proc univariate data=salesinformation;
var sales;
run;

lowest obs: 154, 84, 59, 9,8
highest obs: 5776,5791,5801,5799,5811

/* data cleaning */
data salesinformation2;
set salesinformation;
if _N_ not in(5776,5791,5801,5799,5811);
run;
/*Generate descriptive statistical analysis*/
/* Report required statistical tables */
Ods select BasicMeasures quantiles extremeobs;
proc univariate data=salesinformation2;
var sales;
run;

Upload in third party files:

ods listing close;
ods pdf file='D\sales_stat.pdf';
Ods select BasicMeasures quantiles extremeobs;
proc univariate data=salesinformation2;
var sales;
run;
ods pdf close;
ods listing;
********************************************
/* data cleaning */
data salesinformation3;
set salesinformation2;
if _N_ not in(4752,5738,5774,5800,5806);
run;
/*Generate descriptive statistical analysis*/
/* Report required statistical tables */
Ods select BasicMeasures quantiles extremeobs;
proc univariate data=salesinformation3;
var sales;
run;
********************************************************

/* Create output dataset or summarized dataset */
proc univariate data=salesinformation noprint;
var sales;
output out=sales_sumz mean=sale_mean median=sale_median mode=sale_mode std=sale_std;
run;

Store the statistical tables in output dataset using objective name:
/* collect datasets */
libname user1 'e:\sas\source\sasfiles';
/* Find objective names */
Ods trace on;
proc univariate data=salesinformation;
var sales;
run;
Ods trace off;
/* store in datasets*/
ods output basicmeasures =sale_basic quantiles=sale_quan extremeobs=sale_extr;
proc univariate data=salesinformation;
var sales;
run;
Generate histograms:
proc univariate data=salesinformation;
var sales;
histogram sales;
run;
quit;
Normal option: Generate normal curve using mean and standard deviation and generate normal fit table.
Normal fit table:
It contains parameters for estimates, goodness of fit and quantiles for normal distribution.
parameters for normal distribution: It contains mean and standard deviation which helps to generate normal curve.
quantiles for normal distribution: 
It contains 3 columns.
1. Percent
2. Observed
3. Estimated
Observed values converted as estimated values with required percentage, then data may fit in normal distribution.
Kernel option: Generate normal curve using estimated values, mean and standard deviation.

proc univariate data=salesinformation;
var sales;
histogram sales/normal(color=yellow w=2) kernel(color=red w=2)
wbarline=3 cbarline=white cframe=gray cfill=blue;
run;
quit;

 

Generate probability plots: 
proc univariate data=salesinformation;
var sales;
probplot sales/normal(mu=est sigma=est);
run;
quit;
 

Deviation:
Testing the deviation between the parameters(variable) / using parametric tests.
1. Parametric tests: data should follow normal distribution.
These are
1. T Test
2. ANOVA(Analysis of variance)

1. nonparametric tests: data will be will/will not follow normal distribution.
These are 
1. Chi-square(λ2) Test
2. Wilcoxon test
3. Median Test

Non parametric tests are most powerful tests compared to parametric tests.
T Test : Report significance difference between two groups of means statistically significant or not.
T test sample size must be less than or equal to 30.
T Tests are 3 types.
1. One sample t test
2. Paired sample t test
3. Two sample t test

1. One sample t test : testing significance difference between sample mean to given number.
2. Paired sample t test: testing significance difference between two paired samples.
3. Two sample t test: testing significance difference between two sample means. the 2 samples coming from same population.

Hypothesis:
1. Null hypothesis: There is no difference between two means .
Test default begins with null hypothesis.
H0 µ0 = µ1.
2. Alternative hypothesis: There is a difference.
H0 µ0 ≠ µ1.
µ0 > µ1  or  µ0 < µ1.

Example for one sample t test:
Confidence Intervals or level of significance: 
Default confidence interval is 95%.
CF		α(Alpha)Level
		of Significance
95%		0.05
90%		0.10
85%		0.15
80%		0.20

These confidence intervals are given by the statisticians according to previous studies and data accuracy.

Data Trails;
Input Pid $ Asbp;
cards;
P101	122
P102	122
P103	120
P104	132
P105	121
P106	121
P107	132
;
Task: Testing significance difference between sample mean of Asbp to given SBp -120 statistically significant or not.
Default test begins with null hypothesis at 95 % confidence intervals, level of significance-0.05.
Proc ttest data=trails H0=120;
Var Asbp;
run;

From the output, collect degrees of freedom, T value, and probability of T value.
Statistical References: Statistical references can be given comparison between T calculated value to T tabulated values as well as comparison between probability of t value to level of significance.
Comparison between T calculated value to T tabulated value:
in output T calculated value is calculated as 2.13.
We have to collect T tabulated values from the statistical tables using degrees of freedom and level of significance.
In output degrees of freedom  is 6.
DF = total number of elements (n)-1 = 7-1 = 6.
Level of significance  α = 0.05
T Tabulated value is 2.45 at 6 degrees of freedom and 0.05 level of significance. 
***************************************************************
Rule:
Tcal < Ttab or Ttab>Tcal. Then move to null hypothesis.
Tcal > Ttab or Ttab<Tcal. Then move to Reject null hypothesis.
***************************************************************
Ttab=2.45
Tcal=2.13   Tcal<Ttab. Conclusion: Then move to null hypothesis.

***************************************************************
Rule:
Comparison between Probability of T value to the level of Significance(α).
Probability of T value near to or Greater than Level of significance, Then move to null hypothesis.
***************************************************************
In output, Probability of T value=0.07
Level of significance=0.05
Conclusion: Then move to null hypothesis.

Data Sales_Process;
Input Year Avg_sales;
cards;
2000	230
2001	210
2002	340
2003	230
2004	340
2005	302
;

Task: Testing significance difference between sample mean of average sale to target sale 150, statistically significant or not at 90% confidence intervals.
Proc ttest data=sales_process H0=150 alpha=0.10;
var ag_sales;
run;

Alpha option: enable to specify α value (level of significance).
In output, Tcal  value is 5.20
and probability of t value is 0.003
α=0.10
Conclusion: Here, there is a very very weak probability to accept null hypothesis.
*******************************************

 

Paired Sample T Test: 
Data Sbp_Results;
input pid $ Bsbp Asbp;
cards;
P001	145	142
P002	153	152
P003	150	150
P004	140	142
P005	151	151
P006	160	161
P007	145	142
;

Task: Testing significance difference between sample mean of Bsbp to sample mean of Asbp statistically significant or not at 90% confidence intervals.
/* Paired sample T test */
proc ttest data=sbp_results alpha=0.1;
paired bsbp*asbp;
Run;
In output, Tcalc= 0.7
Ttab=1.94 at 90% confidence interval,  6 degrees of freedom, and at 0.10 level of significance.
Inference: Tcalc less than to Ttab value, then move to null hypothesis.
In output, Probability of t Value is 0.4 and alpha value 0.1, so, we have highest probability to accept null hypothesis.
**********************************************
Two sample T test:

Data Trails_results;
input Pid $ Drug $ Visit $ Asbp;
Cards;
P101	05mg	Eos	121
P102	05mg	Eos	120
P103	05mg	Eos	126
P104	05mg	Eos	129
P105	05mg	Eos	120
P106	10mg	Eos	129
P107	10mg	Eos	124
P108	10mg	Eos	120
P109	10mg	Eos	121
P110	10mg	Eos	124
;
*******************************************
Testing significance difference between two sample means(05mg to 10mg) statistically significant or not according to asbp at 95% confidence intervals.
Testing significance difference using boxplots. Boxplots are generated using quantiles.
**************************************************
data lb;
input drug $ asbp;
cards;
10mg	110
10mg	114
10mg	115
10mg	117
10mg	112
;
Proc boxplot data=lb;
plot asbp*drug;
run;
quit;
 

*********************************************************


Proc boxplot data=trails_results;
plot asbp*drug;
run;
quit;
 

Generate Two sample T test results:
/* Two sample T test */
proc ttest data=trails_results ;
class drug;
var asbp;
Run;

In output, collect f value and probability of f value. 
	
F=(Deviation between the groups)/(Deviation within the groups) =1.
F= (Mean sum of square)/(Modal sum of the square)=1.
**********************************************
F value is near to 1, then move to null hypothesis.
F value is not near to 1, then move to reject null hypothesis.
**********************************************
Analyze:
In output, F value is 1.36. It is near to 1.
Probability of F value is 0.7742 . Our F value is 0.05. Then move to null hypothesis.

ANOVA:
Testing significance difference between more than two group of means.

ANOVA requires balanced data.

Balanced data means each group contains equal number of observations.

If it is unbalanced data, Then move to GLM(General Linear Model). 

GLM is most powerful compared to ANOVA. But it will take more processing time.

ANOVA process can be called factorial designs. 

ANOVAs process is two types.

1. One way ANOVA process
2. Two way ANOVA process.

1. One way ANOVA process: Testing significance difference between more than two group of means.

2. Two way ANOVA process: Testing significance difference between more than two group of means between two factors.

Example for One-way ANOVA process:

Data Vs;
input Gno $ Subid Drug $  Gender $ Asbp;
cards;
G100	101	Asp-05mg	F	132
G100	102	Asp-05mg	F	130
G100	103	Asp-05mg	M	131
G100	104	Asp-05mg	M	131
G200	201	Asp-10mg	F	131
G200	202	Asp-10mg	F	129
G200	203	Asp-10mg	M	126
G200	204	Asp-10mg	M	130
G300	301	Asp-15mg	F	121
G300	302	Asp-15mg	F	120
G300	303	Asp-15mg	M	121
G300	304	Asp-15mg	M	120
;

Task: Testing significance difference between drug values(05mg,10mg, 15mg) according to Asbp values statistically significant or not at 95% confidence intervals.

α=0.05.
Syntax:
Proc anova data=<dataset>;
Class <class var>;
Model <Dependent var>=<Independent var>;
means <variables>;
run;
quit;

Dependent variable means analysis variable, Independent variable means classification variable.

Testing significance difference using boxplot:

Proc boxplot data=vs;
plot asbp*drug;
run;
quit;

Generate ANOVA tables:

proc anova data=vs;
class drug;
model asbp=drug;
Run;
quit;

From the output, collect R-square value, F value and probability of F value.

R-square= 0.936010.
R-square converted to %age=93%.

R-square represents the variation in dependent variable explained by the variation in independent variable.

F value= 65.82 . 
Probability= 0.0001 .


Analyze:
In output, F value is 65.82 . It is not near to 1.
Probability of F value is 0.0001 . α value is =0.05. Very weak probability to accept null hypothesis. Then conclusion is moved to Reject Null Hypothesis.


Means Comparison between Two-Two(2*2) Groups:

proc anova data=vs;
class drug;
model asbp=drug;
Means Drug/Duncan;
Run;
quit;

Duncan/Tukey Grouping Methods: 

These methods try to decrease/reduce the deviation between groups and report.

Same Letters- No difference.
Different letters- Difference.

proc anova data=vs;
class drug;
model asbp=drug;
Means Drug/Duncan;
Run;
quit;


Conclusions: According to Duncan Grouping method, 5mg, 10mg performance is same. But, Quite different performance from 15mg.


Two-way ANOVA process:

Testing significance difference between drug values(05mg,10mg, 15mg) by gender-wise.

Generate Boxplot by Gender-wise:

Proc sort data=Vs out=vssort;
by gender;
run;

Goptions reset =all;

Proc boxplot data=vssort;
plot asbp*gender;
run;
quit;


Generate ANOVA tables:

proc anova data=vs;
class drug gender;
model asbp=drug|Gender;
Run;
quit;

From the ANOVA table, Collect R-square values.

R-square value= 0.951066 .
R-square converted into %age = 95%.
R-square represents 95% variation in dependent variable explained by the variation in independent variable(Drug, Gender).

In output, 
         Source                    F Value     Pr > F 		Conclusion
         Drug                      57.38      0.0001		Reject Null Hypothesis
         Gender		   	  0.62       0.4626		Null Hypothesis
         Drug*Gender               0.62       0.5713		Null Hypothesis

Generate Means drug with Tukey method:

proc anova data=vs;
class drug gender;
model asbp=drug|Gender;
Means Drug gender/Tukey;
Run;
quit;


Non-parametric Tests:
Chi-Square Test:
Testing significance difference between observed values to estimated values statistically significant or not.

Chi-square results can be generated by the Freq procedure.

In these cases, Freq procedure requires Base and SAS/STAT feature.

Proc freq data=sashelp.class;
tables sex/nocum nopercent chisq;
run;

Task: Report significance difference between male to female frequency.

In output, probability of Chi square value=0.81
Our level of significance is 0.05(α).

Analyze:
We have highest probability to accept null hypothesis.

Task:
Testing significance difference between actual sale to estimation sale statistically significant or not.

Data salesdata;
input prdcode $ Details $ sale;
cards;
P101	Act	121
P102	Act	120
P103	Act	126
P104	Act	129
P105	Act	120
P101	Est	129
P102	Est	124
P103	Est	120
P104	Est	121
P105	Est	124
;

Proc freq data=salesdata;
tables details/chisq;
weight sale;
run;


In output, probability of Chi square value=0.95
Our level of significance is 0.05(α).

Analyze:
We have highest probability to accept null hypothesis


Wilcoxon Test:
Testing significance difference between two sample means if two sample t-test produced Reject null hypothesis.

µ0 # µ1  
µ0 > µ1    		µ0 < µ1  
 A>B				  A<B

In Wilcoxon test, we have to test One tail or two tail probability.

One tail probability: If you take A and B as treatments, Then A>B.

Two tail probability: If you take A and B as treatments, Then A>B or B>A.


NPAR1WAY:
Npar1way procedure:
Generates nonparametric test results like Wilcoxon or median test.

Run Wilcoxon test:

Data Trt;
input siteno $ Grpid $ Subid Trt $ Controldays;
cards;
S1	Arm1	101	05mg	40
S1	Arm1	102	05mg	41
S1	Arm1	103	05mg	45
S1	Arm1	104	05mg	56
S1	Arm2	201	15mg	20
S1	Arm2	202	15mg	21
S1	Arm2	203	15mg	35
S1	Arm2	204	15mg	16
;

Task:
Testing significance difference between control days by treatment-wise. Run two sample ttest.

Proc ttest data=trt;
class trt;
var controldays;
run;

Here two sample ttest produce reject null hypothesis.

Wilcoxon test to Identify the best treatment:

proc npar1way data=trt wilcoxon;
class trt;
var controldays;
run;

proc npar1way data=trt wilcoxon;
class trt;
var controldays;
exact;
run;

In output, We observed one tail probability, as well as two tail probability according to Z and T test.

Z
One-Sided Pr >  Z      0.0152
Two-Sided Pr > |Z|     0.0304

t Approximation
One-Sided Pr >  Z      0.0336
Two-Sided Pr > |Z|     0.0671

Analyze:
Highest probability for two-tailed.

In above process, both tests are produced different results, then generate exact key values.


Testing Correlation:

Correlation: Testing relation between two parameters. Correlation value ranges from 0 to 1.

Correlations are two types.
1. Positive Correlation
2. Negative Correlation

1. Positive Correlation:
Both parameter values are available in same direction.



2. Negative Correlation:
Both parameter values are available in different direction.



************************************
Correlation value near to -1 then it is strong negative correlation.
Correlation value near to +1 then it is strong positive correlation.
Correlation value near to 0(zero) then it is no correlation.
************************************

Correlation can be calculated using two methods.

1. Spearman
2. Pearson

Default is Pearson.

Data Sharesdata;
input Month Prdcode Cust Units;
Label Cust='Num. of Customers'
Units='Num. of Shares Sold';
Cards;
1	101	456	5000
2	101	500	7000
3	101	550	9000
4	101	340	4000
5	101	430	7000
6	101	560	8000
1	102	320	4000
2	102	340	5200
3	102	230	4700
4	102	340	2500
5	102	210	2500
6	102	120	1400
;

Generate Correlations Plots:

Symbol interpol=spline;
Proc Gplot data=sharesdata;
Plot units*cust;
run;
quit;


Symbol interpol=none value=star c=red;
Proc Gplot data=sharesdata;
Plot units*cust;
run;
quit;

Generate Pearson Correlation:

proc corr data=sharesdata;
var cust;
with units;
run;

Note: Correlation variables must be numeric. 

In output, correlation variable=0.88. 

Analyze: Strong positive correlation between the parameters.

Generate Pearson & Spearman Correlations:

proc corr data=sharesdata pearson spearman;
var cust;
with units;
run;

Partial Correlation:
Testing relationship between two variables when the third variable has been removed.

proc corr data=sharesdata;
var cust;
with units;
partial prdcode month;
run;

Generate Correlation matrix:
Correlation matrix means within the dataset, each and every variable correlation caompared to all the variables.

proc corr data=sharesdata;
var _numeric_;
run;
/* or */
proc corr data=sharesdata;
run;

From the correlation matrix, we can select required variables for regression analysis or predictive analysis.

Regression analysis:
Testing relation between parameters, is it linear or not and develop predictive models(Regression equations).

y=a+bx.
y=dependent variable.
x=in dependent variable.
a,b are estimated values which are coming from data.

a=intersect.
b=slope value.

Types of regression:
1. Linear
2. Multivariate.

3. Logistic

1. Linear: Testing relation between one dependent variable to one independent variable linear or not and develop the predictive model.
2. Multivariate: Using one dependent variable and more than one independent variable.
3. Logistic regression analyis: Develop the predictive model and produce the result either 0 or 1. 
Near to zero - Risk.
Near to 1 -  Safe.

Steps for developing the regression model/Predictive model:
Testing Data accuracy: If accurate data is not available, then clean the data.
Draw the sample randomly.
Testing relation between dependent variable to independent variable.
Develop the model using regression techniques.
Testing the model.
Tune the model(adding/drop the variables).

/* Plug into oracle */

libname oralib1 Oracle user=sas1 password=sas1 path='sas';

/* copy table from oracle to sas */
proc copy in= oralib1 out=work;
select prod_sales;
run;

libname oralib1 clear;

Develop predictive model for sales using price:
Sale - dependent variable
price - in dependent variable

Testing data accuracy on dependent variable only.

proc univariate data=prod_sales;
var sale;
histogram sale/normal;
run;
quit;

/* Draw the sample using random process */
data salesample;
set prod_sales;
Rnumber=ranuni(34324234);
if rnumber>=0.2 & rnumber <=0.6;
keep sale price;
run;

/* Testing correlation */
proc corr data=salesample;
var sale;
with price;
run;

/* Develop regression model */

proc reg data=salesample;
model sale=price;
run;
quit;

Reg procedure generates ANOVA table and parameter estimates.

Parameter  
 Estimate      

 131.05187  (a)   
 -4.58213   (b)

Reg model is :
Sale=131.05+(-4.58)*Price;

Testing the model:

Data testmodel;
set salesample;
estsale=131.05+(-4.58)*Price;
run;



***********
