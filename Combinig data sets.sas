/* ** combining SAS Data sets ** */

/* - concatenation */
/* - interleaving */
/* - one to one reading */
/* - one to one merging */
/* - match merging */
/*   * one to many/ many to one */
/*   * many to many */
/* -update */


/* concatenation: */

/* reading observations from multiple input datasets to one output datasets in the order in which it is defined in the SET */
/* statement. define multiple datasets ons set statement in the order in which it has to be read */

 
/*  note: datasets with varying structures can be concatenated alternatively using append procedure */
data one;
input id name $;
cards;
1 a
2 b 
3 c
4 d
5 e
6 f
7 g 
8 h
;
run;

data two;
input id;
cards;
9
8
7
6
10
15
18
22
38
27
50
;
run;

/** concatination using two datasets **/
data one_two;
set one  two;
run;

/*** concatination using two datasets with by statement is called interleaving **/
proc sort data=one out=onesort;
by id;
run;

proc sort data=two out=twosort;
by id;
run;

data one_two;
set onesort  twosort;
by id;
run;

data jansales;
length  month $3;
infile datalines;
input year  month $ saleamount;
cards;
1999 jan 25000
2000 jan 30000
;
run;

data febsales;
length  mth $3;
infile datalines;
input year mth $ saleamount;
cards;
1999 feb 55000
2000 feb 35000
;
run;

data sales_data;
set jansales febsales;
run;


data Salesdata_one(rename=(mth=month)); /** option **/
set  febsales;
run;

data Salesdata_feb; /** rename statement **/
set  febsales;
rename mth=month;
run;

data sales_data;
set jansales salesdata_one;
run;


/*** interleaving **/

proc sort data=jansales out=jansale_sort;
by year;
run;

proc sort data=Salesdata_two out=febsale_sort;
by year;
run;

data salesdata;
set jansale_sort febsale_sort;
by year;
run;

proc append base=jansales data=Salesdata_feb ;
run;

proc compare base=jansales compare=febsales;
run;

/** merging of datasets horizentally **/

data one;
infile datalines;
input studid $ studname $;
datalines;
s101 Ram
s102 sudha
s103 preet
;
run;

data two;
infile datalines;
input studid $ maths science social;
datalines;
s101 55 65 75
s102 65 95 75
s104 55 65 75
s105 75 85 95
s105 88 85 96 
;
run;



data one_to_one_reading;
set two;
set one;
run;

data one_to_one_merging;
merge one two;
run;

proc sort data=one out=one_sort;
by studid;
run;

proc sort data=two out=two_sort;
by studid;
run;


data one_two; /** match merge **/
merge one_sort two_sort;
by studid;
run;

data one_two_update; 
update one_sort two_sort;
by studid;
run;

data new;
input id a b c;
cards;
1 41 . .
1 . 42 .
1 . . 43
;
run;


data one;
input id;
cards;
1
2
4
8
9
9
2
3
7
;
run;

data two;
input id;
cards;
2
1
8
.
.
3
5
4
6
9
;
run;

/* joins in data step; */

proc sort data=one out=one_sort;
by id;
run;

proc sort data=two out=two_sort;
by id;
run;


data full_join;
merge one_sort(in=a) two_sort(in=b);
by id;
if a or b;
run;


data inner_join;
merge one_sort(in=a) two_sort(in=b);
by id;
if a and b;
run;


data left_join;
merge one_sort(in=a) two_sort(in=b);
by id;
if a;
run;

data right_join;
merge one_sort(in=a) two_sort(in=b);
by id;
if b;
run;

data new1;
infile cards missover ;
input id name $ gender $ salary age;
cards;
101 sudhakar male 50200 26
102 daijing  female 85512
103 manasi   femal  86223
;
run;


data new2;
input id name $ gender $ salary age ;
cards;
104 abhishek male 96655  30 
105 sravya  female   85512 25
106 krusha   femal  86223 28
;
run;


proc append base=new1 data=new2 force;
run;



