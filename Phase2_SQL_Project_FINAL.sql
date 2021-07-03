drop database healVibe1;
CREATE DATABASE Code

---------------------------> KATY TABLE: PATIENT <---------------------------

create table patient(
patientID INT not null,
FirstName VARCHAR(20) not null,
LastName VARCHAR(20) not null,
Email VARCHAR(30),
DOB date,
Gender char not null,
Payment int,

constraint patient_pk
primary key (patientID)
);

insert into patient
values(0111, 'Katy', 'Milad', 'katy.eptnagho@gmail.com', '11/11/2000', 'F', 60000);
insert into patient
values(0112, 'Jessica', 'Ayman', 'jessica_A@outlook.com', '04/16/1990', 'F', 90000);
insert into patient
values(0113, 'Fady', 'Samir', 'Samir-Fady@yandex.com', '01/25/1988', 'M', 65000);
insert into patient
values(0114,'Mark', 'Wessam', 'mark.wessam598@gmail.com', '08/08/1993', 'M', 70000);
insert into patient
values(0115, 'Sherry', 'Nagy', 'sherry_nagy89@outlook.com', '02/14/1999', 'F', 55000 );
insert into patient
values(0116, 'Mario', 'Kamal', 'mario-kamal00@gmail.com', '11/01/1987', 'M', 150000);
insert into patient
values(0117, 'Mireille', 'Raymond', 'mireille_raymond44@outlook.com', '07/31/1978', 'F', 250000);
insert into patient
values(0118, 'Khadija', 'Tarek', 'dija.tarek1265@gmail.com', '04/04/2001', 'F', 85000);
insert into patient
values(0119, 'Marco', 'Osama', 'Marco.Osama@outlook.com', '06/15/1993', 'M', 75000);
insert into patient
values(0120, 'Madonna', 'Ashraf', 'Madonna-Ashraf@gmail.com', '08/23/2005', 'F', 95000);
insert into patient
values(0121, 'Peter', 'Ashraf', 'peter_ashraf89@gmail.com', '09/17/2002', 'M', 100000);
insert into patient
values(0122, 'Jolie', 'Mamdouh', 'jolie.mamdouh789@outlook.com', '10/10/1999', 'M', 45000);

create table patient_phone(
patientID int not null,
Phone int not null,

constraint patient_phone_pk
primary key (patientID, phone),
constraint patient_phone_fk
foreign key (patientID) references patient (patientID)
);

insert into patient_phone
values(0111, 01153323029);
insert into patient_phone
values(0111, 01000396353);
insert into patient_phone
values(0111, 24598618);
insert into patient_phone
values(0112, 01169849687);
insert into patient_phone
values(0112, 24598363);
insert into patient_phone
values(0113, 012897451);
insert into patient_phone
values (0113, 24986953);
insert into patient_phone
values(0114, 01559875694);
insert into patient_phone
values(0114, 01222318688);
insert into patient_phone
values(0115, 01236548985);
insert into patient_phone
values(0115, 027768726);
insert into patient_phone
values (0116, 012265897);
insert into patient_phone
values (0116, 245697987);
insert into patient_phone
values (0117, 013657884);
insert into patient_phone
values(0117, 23998776);
insert into patient_phone
values (0118, 01236978);
insert into patient_phone
values (0118, 26487988);
insert into patient_phone
values(0119, 0123365798);
insert into patient_phone
values(0119, 245698794);
insert into patient_phone
values(0120, 012577979);
insert into patient_phone
values(0120, 203684579);
insert into patient_phone
values(0121, 012648989);
insert into patient_phone
values(0121, 244689787);
insert into patient_phone
values (0122, 01238488);
insert into patient_phone
values (0122, 24598789);


create table patient_address(
patientID int not null, 
Address varchar(50) not null,

constraint patient_address_pk
primary key (patientID, Address),
constraint patient_address_fk
foreign key (patientID) references patient (patientID)
);

insert into patient_address
values(0111, '9 Hakim Basha, Maadi');
insert into patient_address
values(0111, '115 Sayed Ismail, Helioplis Square');
insert into patient_address
values (0112, '16 Salim el awol, zaytoun');
insert into patient_address
values (0112, '225 tagamo3 el awol');
insert into patient_address
values (0113, '88 tagamo3 el 5ames');
insert into patient_address
values (0113, 'b6 madinity');
insert into patient_address
values (0114, '600 dokki ');
insert into patient_address
values (0114, '80 ramses street' );
insert into patient_address
values (0115, '70 khalifa ma2moon street');
insert into patient_address
values (0115, '88 harmlk street, khatamya');
insert into patient_address
values (0116, '84 A gesr el swes');
insert into patient_address
values (0117, '66 nasr city street');
insert into patient_address
values (0118, '99 mostafa el nahas');
insert into patient_address
values(0119, '102 malek ibrahim- maadi');
insert into patient_address
values(0120, '505 el zamalek');
insert into patient_address
values(0121, '808 fasel- el giza');
insert into patient_address
values(0122, '999 el matarya- giza');

---------------------------> EMAN TABLES: PHARMACY & INSURANCE <---------------------------

CREATE TABLE Pharmacy
(
Pharmacist_name		VARCHAR(20) 	NOT NULL,
SSN 		INT,
Pharm_Shift 	VARCHAR(20) NOT NULL,
Salary		INT  NOT NULL,
Hours_Of_Work INT,    
CONSTRAINT pharmacy_pk 
PRIMARY KEY (SSN)
);

INSERT INTO Pharmacy VALUES( 'Mohamed Ali' , 1 , 'Night' , 2100 , 4);
INSERT INTO Pharmacy VALUES( 'Ahmed Magdy' , 2 , 'Night' , 3400 , 7);
INSERT INTO Pharmacy VALUES ( 'Kamal Fahmy' , 3 , 'Night' , 2000 , 3);
INSERT INTO Pharmacy VALUES( 'Mariam Murad' , 4 , 'Day' , 1800 , 2);
INSERT INTO Pharmacy VALUES( 'Michael Hanna' , 5 , 'Night' , 4300 , '');
INSERT INTO Pharmacy  VALUES( 'Ali Wael' , 6 , 'Night' , 1100 , 1);
INSERT INTO Pharmacy VALUES( 'Katy Milad' , 7 , 'Day' , 2000 , '');

CREATE TABLE Insurance
(
Company_name	VARCHAR(40) 	,
InsuranceID 		INT,
Discount_percentage 		FLOAT,
Patient_ID INT    NOT NULL,
TransactionDate   Date,
CONSTRAINT Insurance_pk
PRIMARY KEY (InsuranceID),
 CONSTRAINT Insruance_Patient_fk
FOREIGN KEY (Patient_ID) REFERENCES patient(patientID)
);

INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage ,TransactionDate, Patient_ID  )
VALUES ('MISR Insurance Company' , 123 , .10, '11/23/2018', 0122);
INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage ,TransactionDate, Patient_ID )
VALUES('Al Chark Insurance Company' , 100  , .05,'9/20/2018', 0111);
INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage ,TransactionDate, Patient_ID )
VALUES ('National Insurance Company' , 449 , .12,'1/3/2019', 0112);
INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage ,TransactionDate, Patient_ID  )
VALUES('Suez Canal Insurance Company', 130 , .34,'10/6/2019', 0115);
INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage  ,TransactionDate, Patient_ID)
VALUES ('Mohandes Insurance Company' , 115 ,.075,'11/1/2019', 0117);
INSERT INTO Insurance(Company_name , InsuranceID , Discount_percentage  ,TransactionDate, Patient_ID)
VALUES('Delta Insurance Company' , 101 , .25,'10/16/2019', 0119);

CREATE TABLE InsuranceAudit
(
Company_name	VARCHAR(40) 	NOT NULL,
InsuranceID 		INT,
Discount_percentage 		FLOAT,
Patient_ID INT    NOT NULL,
TransactionDate   Date,
InsuranceAudit_Msg VARCHAR(50),
InsuranceAudit_Date date,
ServerName VARCHAR(40),
ServerInstanceName VARCHAR(40),

);

CREATE TRIGGER InsuranceDeleTrigger on Insurance
FOR DELETE 
AS DECLARE 
           @Company_name VARCHAR(40),
     @InsuranceID 	INT,
 @Discount_percentage 		FLOAT,
 @Patient_ID INT,
@TransactionDate   Date,
@InsuranceAudit_Msg VARCHAR(50);

select @Company_name= d.Company_name from deleted d;
select @InsuranceID =d.InsuranceID   from deleted d;
select @Discount_percentage =d.Discount_percentage from deleted d;
select @Patient_ID = d.Patient_ID from deleted d;
select  @TransactionDate=d.TransactionDate from deleted d;
select @InsuranceAudit_Msg = 'Delete Trigger Successfully Executed'

INSERT INTO InsuranceAudit
VALUES (@Company_name, @InsuranceID, @Discount_percentage, @Patient_ID, @TransactionDate,@InsuranceAudit_Msg, GETDATE(), CAST( SERVERPROPERTY('MachineName') AS VARCHAR(50)),  CAST( SERVERPROPERTY('ServerName') AS VARCHAR(50)))
GO

Delete from Insurance
where InsuranceID=123;
Delete from Insurance
where InsuranceID=100;

--To know if the insurance with id 123 has been deleted--
select* 
from Insurance;
--to see the row that has been deleted--
select*
from InsuranceAudit;

ALTER TABLE Insurance DISABLE TRIGGER ALL;
DROP TRIGGER InsuranceDeleTrigger;

---------------------------> KHADIJA TABLE: SUPPLIER <---------------------------

create table Supplier
(
SupplierID int,
Addresss varchar(50),
Company_name varchar(50),
Pharmacy_ID int,
constraint Supplier_PK
primary key(SupplierID),

constraint pharmacy_FK
foreign key (Pharmacy_ID) references Pharmacy(SSN)

);

create table SupplierAuditing
(
SupplierID int,
Addresss varchar(50),
Company_name varchar(50),
Pharmacy_ID int,
SupplierAudit_Msg varchar(50),
SupplierAudit_Date Date,

);

create Trigger SupplierTrigger
on Supplier
for insert
as
declare @SupplierID int;
declare @address varchar(50);
declare @Company_name varchar(50);
declare @Pharmacy_ID int;
declare @SupplierAudit varchar(50);


select @SupplierID = i.SupplierID from inserted i;
select @address = i.addresss from inserted i;
select @Company_name = i.Company_name from inserted i;
select @Pharmacy_ID = i.Pharmacy_ID from inserted i;
select @SupplierAudit = 'Supplier Insert Trigger Excuted';


insert into SupplierAuditing
values(@SupplierID, @address, @Company_name, @Pharmacy_ID, @SupplierAudit, getdate());
Print 'Supplier Trigger Successfully Excuted'
Go 

insert into Supplier
values (10, '89 st. Zamalek', 'Ikea',1);
insert into Supplier 
values (11, '79 Muhammed ali st. Mohandeseen','Phizer',2);
insert into Supplier
values (12, '12 Muhammed el maged st. Heliopolis', 'BM-Egypt', 3);
insert into Supplier 
values (15, '13 Sibaway st. Nasr city', '3M', 6);
insert into Supplier
values (16, '8 Nabil el wakkad st. Nasr city', 'Novartis',7);

select *
from Supplier;
select*
from SupplierAuditing;

---------------------------> AHMED TABLE: SURGERY <---------------------------

Create Table Surgery(

SurgeryID int NOT NULL,
Surgery_Date VARCHAR(50),
Operation_Type VARCHAR(50),
Patient_ID int NOT NULL

CONSTRAINT Surgery_Pk
PRIMARY KEY (SurgeryID)

CONSTRAINT Surgery_Fk
FOREIGN KEY (Patient_ID) REFERENCES Patient(PatientID)

);

CREATE TABLE SurgeryAuditing(

SurgeryID INT NOT NULL,
Surgery_Date VARCHAR(50),
Operation_Type VARCHAR(50),
Patient_ID int NOT NULL,
SurgeryAudit_Msg VARCHAR(50),
SurgeryAudit_Date Date

);

Create Trigger SurgeryTrigger
ON Surgery

FOR INSERT
AS
declare @SurgeryID INT;
declare @Surgery_Date VARCHAR(50);
declare @Operation_Type VARCHAR(50);
declare @Patient_ID int;
declare @SurgeryAudit VARCHAR(50);

select @SurgeryID = i.SurgeryID from inserted i;
select @Surgery_Date = i.Surgery_Date from inserted i;
select @Operation_Type = i.Operation_Type from inserted i;
select @Patient_ID = i.Patient_ID from inserted i;
select @SurgeryAudit = 'Surgery Insert trigger executed';

INSERT INTO SurgeryAuditing
VALUES (@SurgeryID, @Surgery_Date, @Operation_Type, @Patient_ID, @SurgeryAudit, getdate()); 
PRINT 'Surgery Trigger Successfully Executed'
GO

INSERT INTO Surgery
Values 
(101,'24/11/2019', 'Open Heart', 0111);
INSERT INTO Surgery
Values 
(102,'26/11/2019', 'Kidney Stone Removal', 0112);
INSERT INTO Surgery
Values 
(103,'28/11/2019', 'Injured Leg', 0113);
INSERT INTO Surgery
Values 
(104,'30/11/2019', 'Gastric Bypass', 0114);
INSERT INTO Surgery
Values 
(105,'01/12/2019', 'Fractured Hip', 0115);
INSERT INTO Surgery
Values 
(106,'03/03/2020', 'Heart Transplant', 0116);
INSERT INTO Surgery
Values 
(107,'09/09/2020', 'Injured Arm', 0117);
INSERT INTO Surgery
Values 
(108,'11/07/2019', 'Blocked Urinary Duct', 0118);
INSERT INTO Surgery
Values 
(109,'16/08/2020', 'Stomach Shrinkage', 0119);
INSERT INTO Surgery
Values 
(110,'24/01/2020', 'Injured Back', 0120);
INSERT INTO Surgery
Values 
(111,'31/12/2019', 'Failing heart', 0121);
INSERT INTO Surgery
Values 
(112,'21/02/2019', 'Fractured Skull', 0122);

--check surgery values
SELECT *
FROM Surgery;
SELECT *
FROM SurgeryAuditing;

---------------------------> KATY TABLE: ROOM <---------------------------

create table Room(
quarterID int not null,
RoomNo int,
Floor_no int not null,
Room_type varchar(30) not null,
check_in date,
check_out date,
Surgery_ID int,
Supplier_ID int ,
Patient_ID int not null

constraint Room_pk
primary key (quarterID),
constraint patient_fk
foreign key (Patient_ID) references patient (patientID),
constraint supplier_room_fk
foreign key (Supplier_ID) references Supplier (SupplierID),
constraint surgery_room_fk
foreign key (Surgery_ID) references Surgery (SurgeryID)
);

create table auditing_room(
quarterID int not null,
RoomNo int,
Floor_no int not null,
Room_type varchar(30),
check_in date,
check_out date,
Surgery_ID int,
Supplier_ID int ,
Patient_ID int not null,
audit_msg varchar(50),
audit_date date
);

insert into Room
values(100,111, 2, 'surgery', '8/12/2018', '8/12/2018', 104, 12,0114);
insert into Room
values(200, 112, 1, 'surgery', '7/7/2019', '7/7/2019', 101, 12, 0111);
insert into Room
values(300, 313, 3, 'accomodation', '8/13/2018', '9/15/2018', null, 10,0114);
insert into Room
values(400, 214, 2, 'accomodation', '7/7/2019', '7/24/2019', null, 10, 0111);
insert into Room
values(500, 315, 3,  'surgery', '9/16/2017', '9/17/2017', 102, 15,0112);
insert into Room
values (600, 116, 1, 'accomodation', '9/17/2017', '9/23/2017', null,10, 0112);
insert into Room
values (700, 217, 2, 'surgery', '12/31/2019', '12/31/2019', 103, 15,0113);
insert into Room
values (800, 118, 1, 'accomodation', '1/1/2020', '1/5/2020', null, 10,0113);
insert into Room
values (900, 319, 3,'surgery', '11/24/2019', '11/24/2019', 105, 12, 0115);
insert into Room
values (1001, 220, 2, 'accomodation', '11/25/2019', '12/2/2019', null, 10, 0115);
insert into Room
values (1002, 112, 1,'surgery', '10/10/2019', '10/10/2019', 108, null, 0118);
insert into Room
values(1003, 313,3, 'accomodation', '10/11/2019', '11/30/2019', null,10, 0118);
insert into Room
values(1004, 315, 3, 'surgery', '4/11/2019', '4/11/2019', 106, null , 0116);
insert into Room
values(1005, 100, 1, 'accomodation', '4/11/2019', '4/25/2019', null, 10, 0116);
insert into Room
values(1006, 217, 2, 'surgery', '6/6/2018', '6/6/2018', 107, null ,0117);
insert into Room
values(1007, 313, 3, 'surgery', '8/8/2019', '8/8/2019', 109, null, 0119);
insert into Room
values(1008, 215, 2, 'accomodation', '8/9/2019', '8/25/2019',null, 10,0119);
insert into Room
values(1009, 112, 1, 'surgery', '12/12/2019', '12/12/2019', 110, null, 0120);
insert into Room
values(1010, 220, 2, 'accomodation','12/13/2019', '12/31/2019', null, null, 0120);
insert into Room
values(1011, 319,3, 'surgery', '2/2/2019', '2/2/2019', 111, null , 0121);
insert into Room
values(1012, 315, 3, 'accomodation', '2/3/2019', '2/22/2019', null, null, 0121);
insert into Room
values(1013, 215, 2, 'surgery', '5/13/2019', '5/13/2019', 112, null , 0122);
insert into Room
values(1014, 313, 3, 'accomodation', '5/13/2019', '5/31/2019', null, null , 0122); 

create TRIGGER room_trigger
ON room
for update
as
declare @quarterID int;
declare @RoomNO int;
declare @Floor_no int;
declare @Room_type varchar(30);
declare @check_in date;
declare @check_out date;
declare @Surgery_ID int;
declare @Supplier_ID int;
declare @Patient_ID int;
declare @audit_msg varchar(50);
declare @audit_date date;

select @quarterID= e.quarterID from inserted e;
select @RoomNO= e.roomNO from inserted e;
select @Floor_no= e.Floor_no from inserted e;
select @Room_type = e.Room_type from inserted e;
select @check_in= e.check_in from inserted e;
select @check_out = e.check_out from inserted e;
select @Surgery_ID= e.surgery_ID from inserted e;
select @Supplier_ID= e.Supplier_ID from inserted e;
select @Patient_ID = e.patient_ID from inserted e;
select @audit_msg= 'update trig executed';
select @audit_date= GETDATE();

insert into auditing_room
values (@quarterID, @RoomNO, @Floor_no, @Room_type, @check_in, @check_out, @Surgery_ID, @Supplier_ID, @Patient_ID, @audit_msg, GETDATE());
print 'trigger successfully'
GO



update room
set check_in= '8/13/2018' 
where quarterID=100;

update room
set check_out ='8/13/2018'
where quarterID=100;

----to check the triger--
select*
from auditing_room;
select *
from Room;


---------------------------> SAMEH TABLE: DOCTOR <---------------------------

CREATE TABLE Doctor(

EmpID INT NOT NULL, 
Speciality VARCHAR(10)

CONSTRAINT Doctor_Pk
PRIMARY KEY (EmpID)

);

INSERT INTO Doctor
VALUES
(001, 'Heart'),
(002, 'Limbs'),
(003, 'Urinary'),
(004, 'Bones'),
(005, 'Gastric');

---------------------------> KHADIJA TABLES: SUPPLIER(Continued) & PRESCRIPTION <---------------------------

create table Supplier_item
(
SupplierID int,
Item varchar(20),
constraint Supplier_item_PK
primary key (SupplierID, Item),
constraint Supplier_item_FK
foreign key (SupplierID) references Supplier (SupplierID),
);

create table Supplier_phone 
(
SupplierID int,
Phone int,
constraint Supplier_phone_PK
primary key (SupplierID, Phone),
constraint Supplier_phone_FK
foreign key (SupplierID) references Supplier (SupplierID),
);

insert into Supplier_item
values( 10, 'Furniture');
insert into Supplier_item
values(11,'Drugs' );
insert into Supplier_item
values(12,'Surgical Equipments');
insert into Supplier_item
values(13,'Cleaning Equipment' );
insert into Supplier_item
values(14, 'Human Care Products');
insert into Supplier_item
values (15, 'Electronics Devices');
insert into Supplier_item
values(16, 'Drugs');

insert into Supplier_phone
values( 10, 01001157878);
insert into Supplier_phone
values(11,01001160311);
insert into Supplier_phone
values (12, 01003426342);
insert into Supplier_phone
values(13, 01063186333);
insert into Supplier_phone
values(14, 01096920366);
insert into Supplier_phone
values(15,01120233979);
insert into Supplier_phone
values(16,01007777729);



create table Prescription 
(
PrescriptionID  int not null,
Datee date not null,
Timee  varchar(50) not null,
Price int not null,
Doctor_ID int not null,
Pharmacy_ID int not null, 

constraint Prescription_PK
primary key (PrescriptionID),
constraint Prescription_Doctor_FK
foreign key (Doctor_ID) references Doctor (EmpID),
constraint Prescription_Pharamacy_FK
foreign key (Pharmacy_ID) references Pharmacy (SSN)
);

insert into Prescription
values (5501,'1/15/2019','14:00',100,001,1);
insert into Prescription
values (5502,'5/17/2018', '17:00',5000,002,2);
insert into Prescription
values (5503, '9/19/2018','16:00',170,003,3);
insert into Prescription
values (5504, '6/20/2019','18:00',600,004,7);
insert into Prescription
values (5505, '7/19/2019', '18:00',200,005,6);
insert into Prescription
values (5506, '3/10/2018', '14:00',5000,001,5);
insert into Prescription
values (5507, '1/1/2019', '16:00',100,002,4);

create table Prescription_drug 
(
PrescriptionID int,
Drug_name varchar(50),
constraint Prescription_Drug_PK
primary key (PrescriptionID),
constraint Prescription_FK
foreign key (PrescriptionID) references Prescription (PrescriptionID)
);

insert into Prescription_drug
values (5501, 'Augmentin');
insert into Prescription_drug
values (5502,'Fluticasone' );
insert into Prescription_drug
values (5503,'Metoprolol Synthesis' );
insert into Prescription_drug
values (5504,'Alprazolam' );
insert into Prescription_drug
values (5505,'Prozax' );
insert into Prescription_drug
values (5506, 'Aspirin');
insert into Prescription_drug
values (5507,'Concour');

---------------------------> AHMED TABLE: CLEANER <---------------------------

Create Table Cleaner(

EmpID int NOT NULL,
Cleaner_Service VARCHAR(20),
SurgeryID int

CONSTRAINT Cleaner_Pk
PRIMARY KEY(EmpID)

);

INSERT INTO Cleaner(EmpID,Cleaner_Service,SurgeryID)
Values
(011,'Room',' '),
(012,'Surgery',104),
(013,'Surgery',103),
(014,'Room',' '),
(015,'Room',' ');

---------------------------> SAMEH TABLES: NURSE & EMPLOYEE <---------------------------

CREATE TABLE Nurse (

EmpID INT NOT NULL,
Specific_Profession VARCHAR(10)

CONSTRAINT Nurse_Pk
PRIMARY KEY (EmpID)

);

INSERT INTO Nurse 
VALUES
(006, 'Surgical'),
(007, 'Rooms'),
(008, 'Surgical'),
(009, 'Surgical'),
(010, 'Rooms');


CREATE TABLE Employee (

EmpID INT NOT NULL, 
FirstName VARCHAR(10), 
LastName VARCHAR(20), 
Email VARCHAR(30), 
Gender CHAR, 
Salary INT, 
DateOfBirth VARCHAR(10),
Surgery_ID INT 

CONSTRAINT Emp_Pk
PRIMARY KEY (EmpID)

CONSTRAINT Emp_Fk
FOREIGN KEY (Surgery_ID) REFERENCES Surgery(SurgeryID)
);

CREATE TABLE EmployeeAuditing (

EmpID INT NOT NULL, 
FirstName VARCHAR(10), 
LastName VARCHAR(20), 
Email VARCHAR(30), 
Gender CHAR, 
Salary INT, 
DateOfBirth VARCHAR(10),
Surgery_ID INT,
EmployeeAudit_Msg VARCHAR(50),
EmployeeAudit_Date Date

CONSTRAINT Emp_Pk_1
PRIMARY KEY (EmpID)

CONSTRAINT Emp_Fk_1
FOREIGN KEY (Surgery_ID) REFERENCES Surgery(SurgeryID)
);

CREATE TRIGGER EmployeeTrigger
ON Employee

FOR INSERT
AS
declare @EmpID INT;
declare @FirstName VARCHAR(10);
declare @LastName VARCHAR(20); 
declare @Email VARCHAR(30); 
declare @Gender CHAR; 
declare @Salary INT; 
declare @DateOfBirth VARCHAR(10); 
declare @Surgery_ID INT;
declare @EmployeeAudit VARCHAR(50);

select @EmpID = a.EmpID from inserted a;
select @FirstName = a.FirstName from inserted a; 
select @LastName = a.LastName from inserted a;
select @Email = a.Email from inserted a;
select @Gender = a.Gender from inserted a;
select @Salary = a.Salary from inserted a; 
select @DateOfBirth = a.DateOfBirth from inserted a; 
select @Surgery_ID = a.Surgery_ID from inserted a; 
select @EmployeeAudit = 'Employee Insert Trigger Executed'; 

INSERT INTO EmployeeAuditing
Values (@EmpID, @FirstName, @LastName, @Email, @Gender, @Salary, @DateOfBirth, @Surgery_ID, @EmployeeAudit, getdate())
PRINT 'Employee Trigger Successfully Executed'
GO

INSERT INTO Employee
VALUES
(001, 'Sameh', 'Elwakeel', 'sameh.elwakeel75@gmail.com', 'M', 13100, '29/08/2000', 101);
INSERT INTO Employee
VALUES
(002, 'Eman', 'Samy', 'EmanSamy@gmail.com', 'F', 29000, '24/08/2000', 103);
INSERT INTO Employee
VALUES
(003, 'Katy', 'Marco', 'KatyMarco@yahoo.com', 'F', 12000, '01/01/2000', 102); 
INSERT INTO Employee
VALUES
(004, 'Ahmed', 'Hany', 'AhmedHany437@hotmail.com', 'M', 10200, '08/08/1999', 104);
INSERT INTO Employee
VALUES
(005, 'John', 'Smith', 'JohnSmith@mail.com', 'M', 9340, '04/03/1997', 105);
INSERT INTO Employee
VALUES
(006, 'Jenny', 'Naguib', 'JN1998@hotmail.com', 'F', 8000, '01/12/1998', 101);
INSERT INTO Employee
VALUES
(007, 'Wesam', 'Chantel', 'WasamCH@mail.com', 'F', 8500, '12/12/2001', 102);
INSERT INTO Employee
VALUES
(008, 'Jana', 'Hossam', 'JHos123@hotmail.com', 'F', 5000, '10/11/1995', 103);
INSERT INTO Employee
VALUES
(009, 'William', 'Hanks', 'WillHankx1@gmail.com', 'M', 7320, '10/02/1997', 104);
INSERT INTO Employee
VALUES
(010, 'Mona', 'Said', 'MonaSa3d@hotmail.com', 'F', 6750, '11/03/1999', 105);
INSERT INTO Employee(EmpID, FirstName, LastName, Email, Gender, Salary, DateOfBirth)
VALUES
(011, 'Mohammed', 'Ahmed', 'Mohammed.Ahmed@hotmail.com', 'M', 2000, '10/05/1970');
INSERT INTO Employee(EmpID, FirstName, LastName, Email, Gender, Salary, DateOfBirth)
VALUES
(012, 'Joseph', 'Hany', 'JoeHany@protonmail.com', 'M', 2300, '21/07/1990');
INSERT INTO Employee(EmpID, FirstName, LastName, Email, Gender, Salary, DateOfBirth)
VALUES
(013, 'Fatima', 'Raafat', 'FatmaR@gmail.com', 'F', 3400, '30/10/1981');
INSERT INTO Employee(EmpID, FirstName, LastName, Email, Gender, Salary, DateOfBirth)
VALUES
(014, 'Sooad', 'Hosny', ' So3dHos@mail.com', 'F', 2050, '11/09/2000');
INSERT INTO Employee(EmpID, FirstName, LastName, Email, Gender, Salary, DateOfBirth)
VALUES
(015, 'Yousef', 'Hamza', 'YousefHamza@outlook.com', 'M', 4100, '16/1/1989');

--check employee table
SELECT *
FROM Employee;

SELECT *
FROM EmployeeAuditing;

CREATE TABLE Emp_Address (

EmpID INT NOT NULL,
EmpAddress VARCHAR(50)

CONSTRAINT Emp_Address_Pk
PRIMARY KEY (EmpID)

);

INSERT INTO Emp_Address
VALUES
(001, '34 Ahmed hamdy st.'),
(002, '12 Ahmed Lotfi st.'),
(003, '17 Sadat Axis st.'),
(004, '10 Joesph Tito st.'),
(005, '11 Youssef Hamad st.'),
(006, '9 El Dokki st.'),
(007, '6 Hamza el fathy st.'),
(008, '3 Mohammed fatah st.'),
(009, '18 Abbas el akkad st.'),
(010, '19 Makram Abbaid st.'),
(011, '1 Omar Shoukry st.'),
(012, '4 Khalifa el Momen st.'),
(013, '78 hamdy hamad st.'),
(014, '13 Mostafa Nahas st.'),
(015, '84 Saint Catharine st.');

CREATE TABLE Emp_Phone (

EmpID INT NOT NULL,
Phone INT

CONSTRAINT Emp_Phone_Pk
PRIMARY KEY (EmpID)

); 

INSERT INTO Emp_Phone
VALUES
(001, 01234567811);
INSERT INTO Emp_Phone
VALUES
(002, 033845764);
INSERT INTO Emp_Phone
VALUES
(003, 018376464),
(004, 028747474),
(005, 018374645),
(006, 028436746),
(007, 018374647),
(008, 021837473),
(009, 018937347),
(010, 018374364),
(011, 019293746),
(012, 019347484),
(013, 018937474),
(014, 018376469),
(015, 019384749);

--------------------- EMAN QUERIES ---------------------

-- For each employee having salary= 2000 or 2700, retrieve the number of employees from pharmacy table according--
-- to the shift they work under--
SELECT  count (SSN) AS 'Number of Employees' , Pharm_Shift
FROM Pharmacy
Where Salary In(2000, 2700)
GROUP BY Pharm_Shift;


-- Retrieve the first name, last name, Company name , Discount percentage and payment--
-- for employees that whose first name starts with 'm' or who pay less than 70000--
SELECT Firstname, Lastname , Company_name , Discount_percentage , Payment
FROM patient JOIN Insurance
ON patientID= Patient_ID
WHERE FirstName LIKE 'M%' OR Payment<70000;



-- Retrieve the Insurance Company name, payment and ID for all the patients inluding those who do not have an insurance
select Company_name, payment , patientID
from Insurance Right Outer Join patient
on Insurance.Patient_ID= patient.patientID;

--Retrive the full names of patients and how much they will pay after the discount--
select FirstName + ' ' + LastName AS 'Full Name' ,  Payment-Payment*Discount_Percentage AS 'Payment after the discount'
from Insurance join patient
on Insurance.Patient_ID= patient.patientID;

--------------------- SAMEH QUERIES ---------------------  

-- Get the first name and last name as full name where the First Name has to contain an 'A'
-- get the salary as original salary and calculate the raise which is salary * 0.8
-- and the Gender is Male
SELECT FirstName + ' ' + LastName AS 'Full Name', Salary AS 'Original Salary', Salary+Salary*0.8 AS 'Salary After Raise'
FROM Employee
WHERE Gender = 'M'
AND FirstName LIKE '%a%';


-- Get the Full name and ID of all employees, and if they are a doctor, show what is their specialization 
SELECT e.EmpID, FirstName + ' ' + LastName AS 'Full Name', Speciality
FROM Employee e JOIN Doctor d
ON e.EmpID = d.EmpID;

-- Get All the doctors full names with all their nurses and their full names and the surgeryID in which they are working on together
SELECT d.EmpID AS 'Doctor ID', d.FirstName + ' ' + d.LastName AS 'Doctor', n.EmpID AS 'Nurse ID', n.FirstName + ' ' + n.LastName AS 'Nurse'
FROM Employee d, Employee n, Doctor dd, Nurse nn
WHERE d.EmpID = dd.EmpID AND nn.EmpID = n.EmpID
AND d.Surgery_ID IN (SELECT n.Surgery_ID
				     FROM Employee
				     WHERE n.Surgery_ID = d.Surgery_ID);

--------------------- KHADIJA QUERIES --------------------- 

--get all drug names that contain at least one "M" where they have to be supplied by a drug company--
select Drug_name, Company_name As' Supplier'
from Prescription_drug, Supplier
where Drug_name like '%m%' AND Company_name='Novartis';

--Get the number of Doctors and the average salary--
select COUNT( e.EmpID) As'Number Of Doctors', AVG(e.Salary) As'Average Doctor Salary'
from Employee e join Doctor d
On e.EmpID = d.EmpID;

--Retrieve the first and last name of employees whose salary is greater than the the nurses--
select Firstname, Lastname, Salary
from Employee
where Salary > All (select Salary from Employee, Nurse 
where Nurse.EmpID = Employee.EmpID);

--Retrive the female patients and their assigned doctor with the operation type--
select e.FirstName As'Doctor', p.FirstName As'Female Patient', Operation_Type
from Employee e , patient p ,Surgery, Doctor
Where p.Gender = 'F' 
And p.patientID = Surgery.Patient_ID
And e.EmpID = Doctor.EmpID
And Surgery.SurgeryID = e.Surgery_ID;

--------------------- KATY QUERIES ---------------------

 /*retrieve the firstName, lastName and the money they paid of the patient by calcuating the age of them in which the room type is 
 accomodation and the check_in date between 5/5/2018 and 9/9/2019 */

select distinct firstName, LastName,FLOOR(DATEDIFF(day,DOB,GETDATE())/365.242199) as 'Age', Payment
from patient
where patientID in (select Patient_ID
                    from room
				     where room_type= 'accomodation'  and check_in between '5/5/2018' and '9/9/2019');


/*retreiving the quarterID, room_type, floor_no and operation_type of the room with the first name of the patient
whose surgery is implemented in floor_no1*/

select distinct quarterID, Room_type, Floor_no, operation_type, firstName
from room, Surgery, patient
where surgeryID=surgery_ID and room.patient_ID=patientID and surgery_ID in (select SurgeryID
              from Surgery
			  where Floor_no=1);

/*select the patient ID, first name and last name as full name, the fees that they will pay where the accomodate in floor number 1 and being supplied
by supplier ID number 12*/
select patientID, FirstName+'' +LastName as 'FullName', payment
from patient 
where payment >60000 and patientID in ( select patient_ID
                     from room
					 where floor_no=1 and Supplier_ID in (select supplier_ID
					                                       from Supplier
														   where SupplierID=12 ));

/* getting accomodation room type from the supplier number 12, the room number and check in date of the patient */
select distinct Room_type,  RoomNo,check_in, SupplierID
from Room e , Supplier i
 join (select Supplier_ID 
        from room e, Supplier i where e.Supplier_ID = i.SupplierID and Supplier_ID = 12) 
		ee on i.SupplierID = Supplier_ID where e.Room_type='accomodation' order by check_in;

/* count the number of patients that had open heart surgery and occupied in room 112*/
select count(*) as 'number of patients'
from patient
where patientID in (select patient_ID
					 from room
					 where RoomNo= 112 and Surgery_ID in (select SurgeryID
					                                      from Surgery
														  where Operation_Type= 'open heart'));

--------------------- AHMED QUERIES ---------------------  

--Display all cleaners that have work in surgerys and have surgery ids
Select Count(c.EmpID) AS 'Number Of Employees', s.SurgeryID
From Cleaner c LEFT OUTER JOIN Surgery s
ON c.SurgeryID = s.SurgeryID
GROUP BY s.SurgeryID;

--Display all cleaners that work in rooms.
Select EmpID,Cleaner_Service
FROM Cleaner
WHERE Cleaner_Service = 'Room'; 

--Display surgeries that took place on 26/11/2019, And their patient ID
SELECT Surgery_Date,Operation_Type,Patient_ID
FROM Surgery
WHERE Surgery_Date = '26/11/2019';