data eid5;

input id salary : comma7. pf : dollar9.;
format salary comma7. pf dollar9.;
cards;
123 25,000 $25,250,000
;

run;

proc print data=eid5;
run;


data karan;

input id name$ salary : comma8. Pf: dollar10. ;
format salary comma8. pf: dollar10.;

cards;

120 karan 20,000 25,250,000
125 kumar 25,000 25,260,000
;

proc print data=karan;
run;


data kumar;
input eid name$ salary: comma9. annual : dollar11.;
cards;
124 Karan 25,000 $200000
125 arpan 26000 $210000
;
proc print data=kumar;
run;

data kumar;
input eid name$ salary: comma9. annual : dollar11.;
cards;
124 Karan 25,000 $200000
125 arpan 26000 $210000
;
proc print data=kumar;
format salary comma9. annual dollar11.;
run;

data kumar;
input eid name$ salary: comma9. annual : dollar11.;
cards;
124 Karan $25,000 $200000
125 arpan $26000 $210000
;
proc print data=kumar;
format salary dollar9. annual dollar11.;
run;




data arpan;
input sno name$ salary : comma9. annual: dollar10.;
datalines;

120 karan $20,000 $220000
;
proc print data=arpan;
format salary annual words35.;
run;data kumar;
input eid name$ salary: comma9. annual : dollar11.;
cards;
124 Karan $25,000 $200000.12
125 arpan $26000 $210000.13
;
proc print data=kumar;
format salary dollar9. annual dollar11.2;
run;



data kumar;
input eid name$ salary: comma9. annual : dollar11.;
cards;
124 Karan $25,000 $200000.12
125 arpan $26000 $210000.13
;
proc print data=kumar;
format salary euro9. annual dollar11.2;
run;


data gurarpan;
input pid jtime ltime;
informat jtime time8. ltime time8.;
cards;

120 09:00:01 05:00:01
;
proc print data=gurarpan;
format jtime time8. ltime time8.;
run;

data gurarpan;
input pid jtimedate ltimedate;
informat jtimedate datetime15. ltimedate datetime15.;
cards;

120 01apr2025:09:00:01 01apr2025:05:00:01
;
proc print data=gurarpan;
format jtimedate datetime20. ltimedate datetime20.;
run;


data gurarpan;
input pid jtimedate ltimedate;
informat jtimedate time15. ltimedate time15.;
cards;

120 09:00:01 05:00:01
;
proc print data=gurarpan;
format jtimedate time20. ltimedate time20.;
run;


data gurarpan;
input pid jtimedate ltimedate;
informat jtimedate time15. ltimedate time15.;
cards;

120 09:00:01am 05:00:01pm
;
proc print data=gurarpan;
format jtimedate timeampm20. ltimedate timeampm20.;
run;


data gurarpan;
input pid jtimedate ltimedate;
informat jtimedate datetime15. ltimedate datetime15.;
cards;

120 01apr2025:09:00:01am 01apr2025:05:00:01pm
;
proc print data=gurarpan;
format jtimedate dateampm20. ltimedate dateampm20.;
run;


data gurarpan;
input pid jtimedate ltimedate;
informat jtimedate datetime15. ltimedate datetime15.;
cards;

1.2 01apr2025:09:00:01am 01apr2025:05:00:01pm
;
proc print data=gurarpan;
format pid percent8.1 jtimedate dateampm20. ltimedate dateampm20.;
run;


