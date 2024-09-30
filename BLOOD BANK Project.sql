create database dbms_project;
use dbms_project;

create table DONOR(
D_ID int Primary key,
D_Name varchar(20),
D_Gender Char(6),
D_Add varchar(30),
D_Blood char(3),
D_Ph int(10)
);

create table RECEIVER(
R_ID int primary key,
D_ID int,
R_Name varchar(20),
R_Gender char(6),
R_Add varchar(30),
R_Blood char(3),
R_Ph int(10),
foreign key(D_ID) references DONOR(D_ID)
);


create table HOSPITAL(
H_ID int primary key,
H_Name varchar(20),
H_Address varchar(30)
);

create table STORAGE(
Store_ID int primary key,
Blood char(3),
Amount int
);

insert into DONOR values(1001,'Aaditya Jain','Male','MR9','A-',1548796251);
insert into DONOR values(1002,'Satyansh Mittal','Male','Vijay Nagar','A+',1234567891);
insert into DONOR values(1003,'Yash Patni','Male','Palasia','O+',1235587565);
insert into DONOR values(1004,'Shalini Gupta','Female','Vijay Nagar','AB-',1478523692);
insert into DONOR values(1005,'Selena George','Female','Palasia','B+',1222115543);
select * from DONOR;

insert into RECEIVER values(1111,1001,'Ati Kapoor','Male','MR9','A-',1326221435);
insert into RECEIVER values(1112,1002,'Yash Mittal','Male','Vijay Nagar','A+',1423315132);
insert into RECEIVER values(1113,1003,'Rahul Dravid','Male','Palasia','O+',1634523111);
insert into RECEIVER values(1114,1004,'Sheela Damani','Female','Vijay Nagar','AB-',1321232146);
insert into RECEIVER values(1115,1005,'Garv Agrawal','Male','Palasia','B+',1325122133);
select * from RECEIVER;

insert into HOSPITAL values(1,"CHL","MR9");
insert into HOSPITAL values(2,"Apollo","Aurbindo");
insert into HOSPITAL values(3,"Aurbindo","Palasia");
insert into HOSPITAL values(4,"Life","Vijay Nagar");
insert into HOSPITAL values(5,"Sanjivni","Palasia");
select * from HOSPITAL;

insert into STORAGE values(1011,"A-",200);
insert into STORAGE values(1012,"A+",250);
insert into STORAGE values(1013,"O+",400);
insert into STORAGE values(1014,"AB-",300);
insert into STORAGE values(1015,"B+",150);
select * from STORAGE;

desc DONOR;
desc RECEIVER;
desc HOSPITAL;
desc STORAGE;