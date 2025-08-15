# SAS-BASE-CERTIFICATION



proc print data=sashelp.class;
run;

data test;
input pid age sex$ name$;
datalines;
1 27 M Karan
2 25 F Arpan 
;
run;

data test;
input pid age sex$ name$;
cards;
1 27 M Karan
2 25 F Arpan
;
run;

proc print data=test;
run;

proc print data=test;
where sex="F";
run;


data test1;
input x y z;
datalines;
10 20 30 
40 50 60 
;
run;

proc print data=test1;
run;

proc print data= test1;
where y=50;
run;

proc printto log="/home/u64263069/faers/test1.log";
run;

libname faers "/home/u64263069/faers";

data faers.test2;
input a$ b$ c$ d$;
cards;
apple banana cat dog
20 30 40 50
;
run;

data abc;
set sashelp.class;
run;

data faers.abc;
set sashelp.class;
run;

data abc;
set sashelp.class(keep= Name Sex Age);
run;

data abc;
set sashelp.class(drop= Name Age Sex);
run;

data abc;
set sashelp.class(rename=(Name=Gname));
run;

data abc;
set sashelp.class;
where sex="F" and Age= 13 and Weight=84
;
run;


data abc (label=myclass);
set sashelp.class;
run;
data abc(pw=xyz);
set sashelp.class;
run;

proc datasets;
modify abc(pw=xyz/);
run;




data abc(replace=no);
set sashelp.class;
run;



data xyz;
input pid age$ sex$ name$;
datalines;
1 25 F Arpan
2 27 M karan
;
run;

data klm;
input pid age$ sex$ name$;
cards;
1 20 F Janvi
2 21 M Mishra
;
run;

data all;
set xyz klm;
run;


libname faers"/home/u64263069/faers";

proc print data=all;
run;

proc contents data=all;
run;



