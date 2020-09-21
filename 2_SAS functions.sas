/***** FUNCTIONS *******/

/* Function return a value when applied on an existing variable */

/**** Types Functions ****/

* 1. character functions:compress,Scan, find, substring, upcase, propcase, lowcase,length, transword;

 *2. numeric functions: sum, min, max, int, abs, ceil, floor, round, diff;
      *Date functions;

/* CHARACTER FUNCTIONS */;

data new;
var='S13@#%874541BaSNET   1478sANJYay:;,.'; output; /** output statement will print the data into the output dataset **/
var='siuFJNj665623jdhjv845515!!!@$%5^0'; output;
run;

/*if you donot put the ouptut every observation is not printed*/

*Compress:removes leading and training blanks, as well as other specified characters);
*COMPRESS(String, characters to be removed, Modifier);

data new1;
set new;
new_var=compress(var,' ');/*remivign the space here*/
number_val=compress(var,' ','kd');/*keep digit here*/
upper_letters=compress(var,' ','u');/*remivign upper case here*/
keep_alphabets=compress(var,' ','ak');/*remove alphabets*/
new=compress(var,'B','i');
run;

/* a – Remove all upper and lower case characters from String. */
/* ak – Keep only alphabets from String. */
/* kd – Keeps only numeric values */
/* d – Remove numerical values from String. */
/* i – Remove specified characters both upper and lower case from String. */
/* k – keeps the specified characters in the string instead of removing them. */
/* l – Remove lowercase characters from String. */
/* p – Remove Punctuation characters from String. */
/* s – Remove spaces from String. This is default. */
/* u – Remove uppercase characters from String. */

data new;
length name $30;
name='sudhaKar konduru  '; output;
name='madhan mohan       gurram '; output;
name='manikanta manohar valavala'; output;
name='lakshmI sravani sunKari'; output;
name='prit patel'; output;
run;

data new1;
set new;
var_compress=compress(name,' '); put var_compress=; /** it will remove the blank spaces in the string **/
var_compbl=compbl(name); put var_compbl=; /** it will convert the multiple spaces into single space **/
substring=substr(name,5,9); put substring=; /** substr function will extract the strings(letters) **/
fname=scan(name,1,''); put fname=; /*** scan function will extract the words in the string **/
lname=scan(name,-1,' '); put lname=; 
tranwords=tranwrd(name,'patel','ruchi'); put tranwords=;
find_func=find(name,'k'); put find_func=;
find_function=find(name,'i','I'); put find_function=;
index_func=index(name,'k'); put index_func=; /*INDEX function does not have the modifier nor the start-position arguments*/
upper_case=upcase(name);
lower_case=lowcase(name);
propcase=propcase(name);
length_func=length(name);
run;

/*Additional fucntions*/
data new;
fname='  sudhakar  '; lname='   konduru   ';output;
fname='sravani'; lname='patel';output;
run;

data new1;
set new;
fullname_concatination=compress(fname,' ')||''||compress(lname,' '); put fullname_concatination=;
fullnam_cat=cat(fname,lname); put fullnam_cat=; 
fullname_catx=catx('_',fname,lname); put fullname_catx=; 
fullname_cats=cats(fname,lname); put fullname_cats=;
run;

data new;
var='sudhakar,konduru,from,rang&technologies.in';
run;
 
data new1;
set new;
n=countc(var,',.&');
word=countw(var);
run;

data new;
input empid;
cards;
101 
102 
103
104
105
;
run;

data new1;
set new;
rightalign=right(empid);
leftalign=left(rightalign);
romovetrailingblanks=trim(rightalign);
removeleadingblanks=trim(left(empid));
stripfunction=strip(empid);
run;

/*** NUMERIC FUNCTIONS **/
data new;
x1=6;
x2=7;
x3=9;
a=sum(x1,x2,x3); put a=;
b=sum(of x1-x3); put b=;
c=min(x1,x2,x3); put c=;
d=max(of x1-x3); put d=;
e=mean(of x1-x3); put e=;
f=std(of x1-x3); put f=;
run;

data new;
a=int(125.25); put a=; /** not decimals **/
b=abs(-125.25); put b=; /** possitive values **/
c=ceil(6.01); put c=; /** next highest values **/
d=floor(4.99); put d=; /** lowest values **/
e=round(52.42,.10); put e=; /** it will round the decilmals and take to the next value or previous value **/
f=round(15.00,10); put f=; /** it will round the digits **/
run;

/* 52.40 52.41 52.42 52.43 52.44 52.45 52.46 52.47 52.48 52.49 52.50 */
/* 10 11 12 13 14 15 16 17 18 19 20 */

data new;
x=58;output;
x=40;output;
x=35;output;
x=29;output;
x=40;output;
run;

data new1;
set new;
new_var=dif(x);put new_var=;
run;

data new;
date1=today();
date2=datetime();
date3=time();
format date1 date9. date2 datetime16. date3 time8.;
run;


/*** dateformats **/ 
data new;
date1=today(); put date1 yymmdd10.; 
date2=today(); put date2 date9.;
date3=today(); put date3 yymmn6.;
date4=today(); put date4 ddmmyy10.;
date5=today(); put date5 monyy7.;
date6=today(); put date6 date7.;
date7=today(); put date7 worddate12.;
date8=datetime(); put date8 datetime16.;
date9=time(); put date9 time8.;
format date1 yymmdd10. date2 date9. date5 monyy6.;
run;

data new;
var=0; put var date9.;
format var date9.;
run;

/** date functions **/

data _null_;
getyear1=year(0); put getyear1=;
getyear2=year('01jan2020'd); put getyear2=;
getmonth=month('01jan2020'd); put getmonth=;
getday=day(0); put getday=;
getweekday=weekday(0); put getweekday=;
getweek=week('01mar2020'd); put getweek=;
getqtr=qtr(today()); put getqtr=;
m_d_y=mdy(01,02,2020); put m_d_y date9.;
intck_date=intck('month','01jan2018'd,'01jan2020'd); put intck_date=;
/** it will give the difference between two date intervals **/
run;

data loans;
input loanno $ loantype $ issuedate: date9.;
format issuedate  date9.;
cards;
H001    House    23jan2009
H002   House    26oct2009
H003    House    21may2010 
H004    House    22jul2011
;
run;

data loansinformation;
set loans;
closedate = intnx('year',issuedate,-10,'m'); /** it will incriment and dicriment the date values **/
format closedate date9.; /** s is giving exact date values **/
proc print data= loansinformation;
run;

data sanjay;
x= 06/21/1985;
format dob date9.;
run;

data sanjay;
x = intck('year','06jun1985'd,today());
y = intck('month','06jun1985'd,today());
z = intck('day','06jun1985'd,today());
run;

data sanjay;
Same= intnx('year','06jun1985'd,10, "s");
back10= intnx('year','06jun1985'd,10, "m");
back10mid= intnx('year','06jun1985'd,-10, "m");
begin= intnx('year','06jun1985'd,10, "b");
endd= intnx('year','06jun1985'd,10, "e");
format same back10 back10mid begin endd date9.;
run;


/** s means same date **/
/** m means middle date **/
/** b means bigening date **/
/** e means ending date **/


/* DATA TYPE CONVERTION FUNCTIONS */

data new;
char_var='52000';output;
char_var='89000';output;
run;

data new1;
set new;
num_var=input(char_var,8.); /** input function converts character values to numeric values **/
run;

data new;
format num_var best16.;
num_var=522547896321456; output;
num_var=89000;output;
run;

data new1;
set new;
char_var=put(num_var,16.); /** put function converts numeric values to character values **/
run;

data new;
var=date(); put var date9.;
format var date9.;
run;

proc sort data=sashelp.class out=classsort;
by sex descending age;
run;

data new;
set classsort;
by sex descending age;
rank+ifn(age=lag(age),0,1)-rank*first.sex;
run;








