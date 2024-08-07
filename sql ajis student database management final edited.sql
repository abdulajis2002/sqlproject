create database college;
use college;

#select clause

select * from student1;
select school,address from student1;
select famsup,schoolsup from student1;
select * from student2;
select famsize,pstatus,medu,mjob from student1;
select walc,health,g1*6 from student2;

#alias

select fjob,studytime as educationt_time from student2;
select famsize,g2 * 12 from student1;

#distinct remove duplicates from result end table

select distinct goout from student1;
select distinct famrel from student1;

#unique remove duplicates from original table;

alter table student1 change student_id student_id int unique;

#where clause

select school,nursery from student1 where internet="yes";
select address,medu from student1 where walc=1;

select address,famsize from student1 where medu > 2;
select fjob,schoolsup from student1 where traveltime < 3;

select * from student1 where medu !=1;

#logical operator(AND OR NOT)
#AND
select * from student1 where medu=2 and medu=4;
select * from student1 where medu=4 and fedu=1;

#OR
select * from student1 where medu=2 or medu=4;
select * from student1 where traveltime=2 or studytime=2;

#NOT

select * from student1 where not studytime=2;
select * from student1 where not fjob="servies";

#IN operator

select pstatus,fedu from student1 where fjob in("at_home","health");

#NOT IN operator

select * from student1 where guardian not in("mother");

#between and notbetween

#between
select * from student1 where fedu between 1 and 3;

#notbetween
select * from student1 where famrel not between 3 and 4;

#null and NOTnull

#null
select * from student1 where student_id is null;

#notnull
select * from student1 where medu is not null;

select * from student3;

#like
#names starts with H;
select * from student3 where names like "h%";

#names end with d
select * from student3 where names like"%d";

#names contain a
select * from student3 where names like"%a%";

#names alternative a
select * from student3 where names like"%a%";

#names contain coginitive a(aa)
select * from student3 where names like"%hh%";

#names contain 2A
select * from student3 where names like"a%a%";

#names contain second character A
select * from student3 where names like "_a%";

#names second last character h
select * from student3 where names like "%h_";

#names start with first m and ends with n
select * from student3 where names like"m%" and names like"%n"

#not like
#names not contain a
select * from student3 where names not like "%a%";


#concatination
select concat ("my school " , " is kpmg" ," my sex is " ," female ", "my age is","22")as intro from student3;

#functions
#multirow function
#max
select max(fedu) from student3;

#min
select min(fedu) from student3;

#sum
select sum(fedu) from student3;

#count
select count(*) from student3 where mjob ="teacher";

#single row function
#lower
select lower(names)from student3;

#upper
select upper(names)from student3;

#reverse
select reverse(names)from student3;

#length
select length(names)from student3;

#mod 
select mod(9,3) from student3;

#substring 
select * from student3 where substr(names,1,1)="m";
select * from student3 where substr(names,-2,1)="b";
select * from student3 where substr(names,-1,2)="o";

#orderby
select names from student3 order by names desc;
select names from student3 order by fedu asc;
select * from student3 order by medu;
select * from student2;
select * from student1;

#subqueries
select activities from student3 where absences < any (select absences from student3 where romantic = "no");
select * from student3 where age > any (select age from student1 where studytime=2);

 
#Joins
#innerjoin
select * from student2 inner join student3 on student2.failures=student3.failures;

#leftjoin
select * from student2 left join student3 on student2.goout=student3.goout;

#right join
select * from student2 right join student3 on student2.famrel=student3.famrel;

#self join
select * from student2,student3 where student2.famrel=4;

#full outer join
select * from student2,student3 where student2.fjob="teacher";

#group by clause

select min(age) from student2 group by medu ;
select max(medu) from student2 group by goout;
select sum(fedu) from student2 group by failures;
select count(*) from student2 group by fedu;

#group by and having clause
select min(age) from student2 group by fedu having max(medu) > 1;
select count(*) from student2 group by age having count(*)>=2;
select sum(age) from student2 group by fedu having min(medu);
select avg(fedu) from student2 group by fedu having min(age) < 30;

#limit and offset
select * from student2 limit 1 offset 1;


#end of project 
#student database management
#*********************************************THE END************************************************************#