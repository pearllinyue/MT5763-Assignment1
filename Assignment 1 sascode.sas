/*read sheet1*/
proc import out=potplants1
  datafile="D:\MT5763\Assignment 1\PotPlants_18.xlsx";
  sheet="Sample Set One";
  getnames=yes;
run;
/*read sheet2*/
proc import out=potplants2
  datafile="D:\MT5763\Assignment 1\PotPlants_18.xlsx";
  sheet="Sample Set Two";
  getnames=yes;
run;
/*read sheet3*/
proc import out=potplants3
  datafile="D:\MT5763\Assignment 1\PotPlants_18.xlsx";
  sheet="Sample Set Three";
  getnames=yes;
run;
data potplants4;
set potplants1 potplants2 potplants3;
run;
/*check Null*/
data missing(drop=i);
set potplants4;
array a_numeric_;
do i=1 to dim(a);
if missing(a) then output;
end;
array b_charater_;
do i=1 to dim(b);
if missing(b) then output;
end;
/*drop null values*/
data potplants;
set potplants4;
array x_all_;
do i=1 to dim(potplants4);
if x(i)=. then delete;
end;
run;
/*summary the data*/
proc summary data = potplants mean std n max min ;/*statistical quantities*/

var _numeric_;
class Group;
output out = aa;

proc print data=aa;

run;

/*tabulate the data*/
proc tabulate data=potplants ;
class Group ;
var _numeric_ ;
table Group ,(mean,std \)
proc print ;
run;

/*plot the K and Sc*/
proc sgplot data=potplants;
scatter x=K  y=Sc  \group=Group;
run;

/*plot the K and Fe*/
proc sgplot data=potplants;
scatter x=K  y=Fe  \group=Group;
run;

/*plot the K and Mg*/
proc sgplot data=potplants;
scatter x=K  y=Mg  \group=Group;
run;

/*plot the Sc and Fe*/
proc sgplot data=potplants;
scatter x=Sc  y=Fe  \group=Group;
run;

/*plot the Sc and Mg*/
proc sgplot data=potplants;
scatter x=Sc  y=Mg  \group=Group;
run;

/*plot the Fe and Mg*/
proc sgplot data=potplants;
scatter x=Fe  y=Mg  \group=Group;
run;

