REM   Script: ddl+dml
REM   Database Phase 4

    REM   Script: ITS 


REM   Database Phase 4 


CREATE TABLE Lecturer(  
L_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
Lfname VARCHAR2(30) NOT NULL,   
Llname VARCHAR2(30) NOT NULL,   
L_faculty VARCHAR2(30) NOT NULL,   
L_emailAddress VARCHAR2(20) NOT NULL,   
L_username VARCHAR2(30) NOT NULL,   
L_password VARCHAR2(30) NOT NULL  
);

CREATE TABLE Company (  
c_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
c_name VARCHAR2(30) NOT NULL,   
registrationNo VARCHAR2(30) NOT NULL,   
CEOname VARCHAR2(30) NOT NULL,   
website VARCHAR2(30) NOT NULL,   
profile VARCHAR2(30) NOT NULL,   
address VARCHAR2(50) NOT NULL,   
emailAddress VARCHAR2(50) NOT NULL,   
company_status VARCHAR2(10) NOT NULL,   
application_result VARCHAR2(10) NOT NULL,   
c_username VARCHAR2(30) NOT NULL,   
c_password VARCHAR2(30) NOT NULL  
);

CREATE TABLE Student (  
s_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
s_fname VARCHAR2(30) NOT NULL,   
s_lname VARCHAR2(30) NOT NULL,   
s_profile VARCHAR2(30) NOT NULL,   
s_address VARCHAR2(50) NOT NULL,   
s_program VARCHAR2(30) NOT NULL,   
s_CGPA VARCHAR2(10) NOT NULL,   
s_application_status VARCHAR2(10) NOT NULL,   
s_username VARCHAR2(30) NOT NULL,   
s_password VARCHAR2(30) NULL,  
L_id VARCHAR2(10) NOT NULL,  
c_id VARCHAR2(10) NOT NULL,  
CONSTRAINT its_Lect_fk FOREIGN KEY (L_id) REFERENCES Lecturer(L_id),  
CONSTRAINT its_Comp_fk FOREIGN KEY (c_id) REFERENCES Company(c_id)  
);

CREATE TABLE JKLI(  
L_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
approval_status VARCHAR2(10) NOT NULL,   
verification_no VARCHAR2(10) NOT NULL,   
CONSTRAINT its_JKLI_fk FOREIGN KEY (L_id) REFERENCES Lecturer(L_id)  
);

CREATE TABLE Supervisor(  
L_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
supervise_slot VARCHAR2(10) NOT NULL,  
CONSTRAINT its_supervisor_fk FOREIGN KEY (L_id) REFERENCES Lecturer(L_id)  
);

CREATE TABLE Application(  
L_id VARCHAR2(10) NOT NULL PRIMARY KEY,   
application_status VARCHAR2(10) NOT NULL,  
CONSTRAINT its_Application_fk FOREIGN KEY (L_id) REFERENCES Lecturer(L_id)  
);

CREATE TABLE Stud_contact(  
s_phoneNo VARCHAR2(10) NOT NULL PRIMARY KEY,   
s_id VARCHAR2(10) NOT NULL,  
CONSTRAINT its_Stud_contact_fk FOREIGN KEY (s_id) REFERENCES Student(s_id)  
);

CREATE TABLE Comp_contact(  
c_phoneNo VARCHAR2(30) NOT NULL,   
c_faxNo VARCHAR2(30) NOT NULL,  
c_id VARCHAR2(10) NOT NULL,  
CONSTRAINT its_Comp_contact_pk PRIMARY KEY(c_phoneNo,c_faxNo),  
CONSTRAINT its_Comp_contact_fk FOREIGN KEY (c_id) REFERENCES Company(c_id)  
);

CREATE TABLE Lect_contact(  
L_officePhoneNo VARCHAR2(10) NOT NULL,   
L_phoneNo VARCHAR2(10) NOT NULL,  
L_id VARCHAR2(10) NOT NULL,  
CONSTRAINT its_Lect_contact_pk PRIMARY KEY(L_officePhoneNo,L_phoneNo),  
CONSTRAINT its_Lect_contact_fk FOREIGN KEY (L_id) REFERENCES Lecturer(L_id)  
);

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L001', 'Adibah', 'Nora', 'Computing', 'adibahnora@utm.my', 'adibahnora001', 'Adibah1312#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L002', 'Afiq', 'Hakim', 'Computing', 'afiqhakim@utm.my', 'afiqhakim002', 'afiq.7623');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L003', 'Aiman', 'Redza', 'Computing', 'aimanredza@utm.my', 'aimanredza003', 'aimanRedza85');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L004', 'Alina', 'Ahmad', 'Computing', 'alinahmad@utm.my', 'alinahmad004', 'alina7423');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L005', 'Bing', 'Qi', 'Computing', 'bingqi@utm.my', 'bingqi005', 'Bing1611#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L006', 'Blare', 'Sinclair', 'Computing', 'blaresinclair@utm.my', 'blaresinclair006', 'blareSinc87');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L007', 'Ci', 'Jing', 'Computing', 'cijing@utm.my', 'cijing007', 'ci99999#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L008', 'Chan', 'Ho', 'Computing', 'chanho@utm.my', 'chanho008', 'chanho.22');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L009', 'Choi', 'Ming', 'Computing', 'choingming@utm.my', 'choiming009', 'choi.8726');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L010', 'Dini', 'Razak', 'Computing', 'dinirazak@utm.my', 'dinirazak010', 'Dini.1234#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L011', 'Din', 'Husain', 'Computing', 'dinhusain@utm.my', 'dinhusain011', 'dinHus44');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L012', 'Dua', 'Sani', 'Computing', 'duasani@utm.my', 'duasani012', 'duaTiga23');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L013', 'Erick', 'Leong', 'Computing', 'erickleong@utm.my', 'erickleong013', 'erick8210');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L014', 'Emira', 'Hisham', 'Computing', 'emirahisham@utm.my', 'emirahisham014', 'emira7624#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L015', 'Fakhrul', 'Radzi', 'Computing', 'fakhrulradzi@utm.my', 'fakhrulradzi015', 'fakh.2389');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L016', 'Fong', 'Lee', 'fonglee@utm.my', 'Computing','fonglee016', 'fongfong76');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L017', 'Ghafar', 'Hamid', 'Computing', 'ghafarhamid@utm.my', 'ghafarhamid017', 'ghafar8727#');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L018', 'Hamidah', 'Hasani', 'Computing', 'hamidahhasani@utm.my', 'hamidahhasani018', 'hamidahutm86');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L019', 'Hamid', 'Ahmad', 'Computing', 'hamidahmad@utm.my', 'hamidahmad019', 'hamid7717');

INSERT INTO Lecturer(L_id, Lfname, Llname, L_faculty, L_emailAddress, L_username, L_password) 
VALUES ('L020', 'Irvid', 'Singh', 'Computing', 'irvidsingh@utm.my', 'irvidsingh020', 'Irvid1998#');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770001', '0127636467','L001');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770002', '0138757852','L002' );

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770003', '0123766746','L003' );

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770004', '0177238572', 'L004');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770005', '0189077239','L005' );

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770006', '0169879871','L006');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770007', '0199283617','L007');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770008', '0120809723','L008');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770009', '0192312344','L009');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770010', '0169866323','L010');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770011', '0123434786','L011');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770012', '0138767623','L012');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770013', '0182334134','L013');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ( '0737770014', '0122334876','L014');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770015', '0109865322','L015');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770016', '0167779011','L016');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770017', '0124363537','L017');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770018', '0179824673','L018');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770019', '0185430936','L019');

INSERT INTO Lect_contact(L_officePhoneNo, L_phoneNo, L_id) 
VALUES ('0737770020', '0109797888','L020');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L001', 'Approve', '21001');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L002', 'Approve', '21002');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L003', 'Reject', '21003');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L004', 'Approve', '21004');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L005', 'Reject', '21005');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L006', 'Approve', '21006');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L007', 'Approve', '21007');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L008', 'Approve', '21008');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L009', 'Reject', '21009');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L010', 'Approve', '21010');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L011', 'Reject', '21011');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L012', 'Approve', '21012');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L013', 'Approve', '21013');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L014', 'Approve', '21014');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L015', 'Approve', '21015');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L016', 'Approve', '21016');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L017', 'Approve', '21017');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L018', 'Reject', '21018');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L019', 'Approve', '21019');

INSERT INTO JKLI(L_id, approval_status, verification_no) 
VALUES ('L020', 'Approve', '21020');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L001', 'week 1');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L002', 'week 2');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L003', 'week 3');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L004', 'week 4');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L005', 'week 5');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L006', 'week 6');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L007', 'week 7');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L008', 'week 8');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L009', 'week 9');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L010', 'week 10');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L011', 'week 11');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L012', 'week 12');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L013', 'week 13');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L014', 'week 14');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L015', 'week 15');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L016', 'week 16');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L017', 'week 17');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L018', 'week 18');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L019', 'week 19');

INSERT INTO Supervisor(L_id, supervise_slot) 
VALUES ('L020', 'week 20');

INSERT INTO Application(L_id, application_status) 
VALUES ('L001', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L002', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L003', 'Rejected');

INSERT INTO Application(L_id, application_status) 
VALUES ('L004', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L005', 'Rejected');

INSERT INTO Application(L_id, application_status) 
VALUES ('L006', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L007', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L008', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L009', 'Rejected');

INSERT INTO Application(L_id, application_status) 
VALUES ('L010', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L011', 'Rejected');

INSERT INTO Application(L_id, application_status) 
VALUES ('L012', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L013', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L014', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L015', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L016', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L017', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L018', 'Rejected');

INSERT INTO Application(L_id, application_status) 
VALUES ('L019', 'Accepted');

INSERT INTO Application(L_id, application_status) 
VALUES ('L020', 'Accepted');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c001', 'Accenture', '201900000001', 'Raj Rahul', 'accenture.com', 'accenture.jpg', '11, Jalan Sentral 1, Ampang, Kuala Lumpur', 'accentureinquiry@accenture.my', 'active', 'Accepted', 'accenture001', 'accenture00000001');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c002', 'Amazon Malaysia', '201900000012', 'Adam Iskandar', 'amazon.com', 'amazon.jpg', '72, Jalan Sentral 2, Ampang, Kuala Lumpur', 'amazoninquiry@amazon.my', 'active', 'Accepted', 'amazon002', 'amazon00000012');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c003', 'Apple Malaysia', '201900001672', 'Armand Do', 'apple.com', 'apple.jpg', '23, Jalan Cheras, Cheras, Kuala Lumpur', 'appleinquiry@apple.my', 'active', 'Rejected', 'apple003', 'apple00001672');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c004', 'CELCOM', '201900005678', 'Kamil Luq', 'celcom.com', 'celcom.jpg', '45, Jalan Sentral 1, Ampang, Kuala Lumpur', 'celcominquiry@celcom.my', 'active', 'Accepted', 'celcom004', 'celcom00005678');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c005', 'CIMB BANK', '201900000112', 'Hafidzah Juhaid', 'cimb.com', 'cimb.jpg', '09, Jalan Sentral 2, Ampang, Kuala Lumpur', 'cimbinquiry@cimb.my', 'active', 'Rejected', 'cimb005', 'cimb00000112');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c006', 'Cognizant', '201900000003', 'Ming Qi', 'cognizant.com', 'cognizant.jpg', '34, Jalan Cheras, Cheras, Kuala Lumpur', 'cognizantinquiry@cognizant.my', 'active', 'Accepted', 'cognizant006', 'cognizant00000003');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c007', 'Cybersecurity', '201900000018', 'Raqib Ridzuan', 'cybersecurity.com', 'cybersecurity.jpg', '11, Precint 12, Putarajaya, Wilayah Persekutuan', 'cybersecurityinquiry@cybersecurity.my', 'active', 'Accepted', 'cybersecurity007', 'cybersecurity00000018');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c008', 'DELL', '201900000009', 'Arita Mohamad', 'dell.com', 'dell.jpg', '67, Jalan Sentral 1, Ampang, Kuala Lumpur', 'dellinquiry@dell.my', 'active', 'Accepted', 'dell008', 'dell00000009');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c009', 'Google Malaysia', '201900007823', 'Hasan Aqiff', 'google.com', 'google.jpg', '89, Jalan 7, Maluri, Kuala Lumpur', 'googleinquriy@google.com', 'active', 'Rejected', 'google009', 'google00007823');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c010', 'HCL Tech', '201900005678', 'Chai Yin', 'hcltech.com', 'hcltech.jpg', '17, Jalan Sentral 1, Ampang, Kuala Lumpur', 'hcltechinquiry@hcltech.my', 'active', 'Accepted', 'hcltech010', 'hcltech00005678');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c011', 'IBM', '201900004352', 'Kai Yuen', 'ibm.com', 'ibm.jpg', '51, Jalan Cheras, Cheras, Kuala Lumpur', 'ibminquiry@ibm.my', 'active', 'Rejected', 'ibm011', 'ibm00004352');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c012', 'Intel', '201900067902', 'Yew Soon', 'intel.com', 'intel.jpg', '23, Jalan 7, Maluri, Kuala Lumpur', 'intelinquiry@intel.my', 'active', 'Accepted', 'intel012', 'intel00067902');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c013', 'MAXIS', '201900034567', 'Jamal Arifin', 'maxis.com', 'maxis.jpg', '7, Jalan Sentral 1, Ampang, Kuala Lumpur', 'maxisinquiry@maxis.my', 'active', 'Accepted', 'maxis013', 'maxis00034567');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c014', 'MAYBANK', '201900278934', 'Que Farhan', 'maybank.com', 'maybank.jpg', '18, Jalan Cheras, Cheras, Kuala Lumpur', 'maybankinquiry@maybank.my', 'active', 'Accepted', 'maybank014', 'maybank00278934');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c015', 'Meta', '201900347891', 'Marshall Shedik', 'meta.com', 'meta.jpg', '48, Jalan Sentral 2, Ampang, Kuala Lumpur', 'metainquiry@meta.my', 'active', 'Accepted', 'meta015', 'meta00347891');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c016', 'Microsoft Malaysia', '201982456782', 'Zul Faris', 'microsoft.com', 'microsoft.jpg', '41, Jalan 7, Maluri, Kuala Lumpur', 'microsoftinquriry@microsoft.my', 'active', 'Accepted', 'microsoft016', 'microsoft82456782');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c017', 'Oracle', '201989346782', 'Mohd Nadzri', 'oracle.com', 'oracle.jpg', '56, Jalan Cheras, Cheras, Kuala Lumpur', 'oracleinquiry@oracle.my', 'active', 'Accepted', 'oracle017', 'oracle89346782');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c018', 'Petronas', '201900003491', 'Vinwick Kapoor', 'petronas.com', 'petronas.jpg', '87, Jalan Sentral 2, Ampang, Kuala Lumpur', 'petronasinquiry@petronas.my', 'active', 'Rejected', 'petronas018', 'petronas00003491');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c019', 'RHB', '201900023457', 'Kamal Nordin', 'rhb.com', 'rhb.jpg', '96, Jalan Cheras, Cheras, Kuala Lumpur', 'rhbinquiry@rhb.my', 'active', 'Accepted', 'rhb019', 'rhb00023457');

INSERT INTO Company(c_id, c_name, registrationNo, CEOname, website, profile, address, emailAddress, company_status, application_result, c_username, c_password) 
VALUES ('c020', 'Tech Data Malaysia', '201900000017', 'Oi Tze', 'techdata.com', 'techdata.jpg', '92, Jalan Sentul, Sentul Raya, Kuala Lumpur', 'techdatainquiry@techdata.my', 'active', 'Accepted', 'techdata020', 'techdata00000017');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0302318479', '039874678912456', 'c001');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0389127021', '039769060967677', 'c002');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0321394838', '039696852424424', 'c003');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0302479084', '038009809808111', 'c004');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0312487099', '038797986969690', 'c005');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0312834789', '033241415415134', 'c006');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0313895707', '030980247658790', 'c007');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0383842532', '038769609709798', 'c008');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('039878945353254', '0334582345', 'c009');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0334534665', '036787587587872', 'c010');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0393579374', '036472543278892', 'c011');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0339768073', '038709700971111', 'c012');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0332475409', '032132143254491', 'c013');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0393865034', '037987674143143', 'c014');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0387556686', '038970901131236', 'c015');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0376320876', '030970722222211', 'c016');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0343765890', '030986523568711', 'c017');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0396544190', '032111111178989', 'c018');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0344545444', '031231654543490', 'c019');

INSERT INTO Comp_contact( c_phoneNo , c_faxNo, c_id ) 
VALUES ('0367675767', '039879869613221', 'c020');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id ) 
VALUES ('s001', 'Abu', 'Bakar', 'abu.jpg', '123, Taman Indah, Ampang, Selangor', 'SECJH', '3.77', 'Accepted', 'abubakar001', 'Abu9906#','L001', 'c001');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s002', 'Adam', 'Mikhail', 'adam.jpg', '32, Ecohill, Semenyih, Selangor', 'SECRH', '3.82', 'Accepted', 'adammikhail002', 'mikhail.9712','L001', 'c002');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s003', 'Aini', 'Rozman', 'aini.jpg', 'A-14, Pangsapuri Equinn, Bayan Lepas, Penang', 'SECRH', '2.97', 'Rejected', 'ainirozman003', 'aini.0314','L001', 'c003');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s004', 'Afwad', 'Redza', 'afwad.jpg', 'M-24, Pangsapuri Lawati, Bukit Jalil, Kuala Lumpur', 'SECJH', '3.77', 'Accepted', 'afwadredza004', 'afwad9001223','L001', 'c004');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s005', 'Barau', 'Badang', 'barau.jpg', '22, Taman Bukit, Sepang, Selangor', 'SECVH', '2.97', 'Rejected', 'baraubadang005', 'Barau9822#','L002', 'c005');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s006', 'Bastien', 'Leong', 'bastien.jpg', '78, Jalan 2, Skudai, Johor', 'SECRH', '3.82', 'Accepted', 'bastienleong006', 'bastien.0119', 'L002', 'c006');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s007', 'Bethany', 'Adaams', 'bethany.jpg', '91, Jalan Lama, Kota Tinggi, Johor', 'SECVH', '3.82', 'Accepted', 'bethanyadaams007', 'Bethany0119#', 'L002', 'c007');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s008', 'Bulan', 'Hati', 'bulan.jpg', 'Lot 1, Eco Forest, Semenyih, Selangor', 'SECVH', '3.82', 'Accepted', 'bulanhati008', 'bulanhati0320', 'L002', 'c008');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s009', 'Chan', 'Tian', 'chan.jpg', '23, Taman Hijau, Alor Setar, Kedah', 'SECJH', '2.97', 'Rejected', 'chantian009', 'chan.2209', 'L003', 'c009');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s010', 'Chen', 'Wei', 'chen.jpg', '111, Jalan Limau, Ipoh, Perak', 'SECBH', '3.77', 'Accepted', 'chenwei010', 'weiwhen1110', 'L003', 'c010');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s011', 'Chong', 'Lee', 'chong.jpg', '17, Jalan Puteh, Pasir Putih, Kelantan', 'SECRH', '2.97', 'Rejected', 'chonglee011', 'Chong0228#', 'L003', 'c011');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s012', 'Chris', 'Anandan', 'chris.jpg', '171, Jalan Jernih, Arau, Perlis', 'SECBH', '3.77', 'Accepted', 'chrisanandan012', 'chris.anandan01', 'L003', 'c012');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s013', 'Dayang', 'Kamarul', 'dayang.jpg', '42, Jalan Batik, Dungun, Terengganu	', 'SECJH', '3.82', 'Accepted', 'dayangkamarul013', 'dayang020507#', 'L004', 'c013');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s014', 'Dabita', 'Hazri', 'dabita.jpg', '47, Jalan 7, Arau, Perlis', 'SECBH', '3.77', 'Accepted', 'dabitahazri014', 'dabita9912', 'L004', 'c014');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s015', 'Dian', 'Ho', 'dian.jpg', '12, Taman Melawati, Shah Alam, Selangor', 'SECJH', '3.77', 'Accepted', 'dianho015', 'dianho130613', 'L004', 'c015');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s016', 'Denice', 'Raj', 'denice.jpg', '17, Precint 7, Putrajaya, Wilayah Persekutuan', 'SECBH', '3.77', 'Accepted', 'deniceraj016', 'denice.1121', 'L004', 'c016');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s017', 'Eindah', 'Baharom', 'eindah.jpg', '69, Jalan Baru, Cheras, Kuala Lumpur', 'SECJH', '3.77', 'Accepted', 'eindahbaharom017', 'Eindah9516#', 'L005', 'c017');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s018', 'Eiskandar', 'Adham', 'eiskandar.jpg', '9, Taman Cahaya, Tampin, Negeri Sembilan', 'SECBH', '2.97', 'Rejected', 'eiskandaradham018', 'eiskandar13.12', 'L005', 'c018');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s019', 'Erica', 'Miller', 'erica.jpg', '71, Jalan 4, Seremban 3, Negeri Sembilan', 'SECJH', '3.77', 'Accepted', 'ericamiller019', 'ericamilller982501', 'L005', 'c019');

INSERT INTO Student( s_id, s_fname, s_lname, s_profile, s_address, s_program, s_CGPA, s_application_status, s_username, s_password, L_id, c_id) 
VALUES ('s020', 'Erni', 'Zaqwan', 'erni.jpg', '56, Tasek Biru, Miri, Sarawak', 'SECVH', '3.77', 'Accepted', 'ernizaqwan020', 'Erni', 'L005', 'c020');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0123456788', 's001');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0123345673', 's002');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0134556783', 's003');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0102278442', 's004');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0111156391', 's005');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0196534601', 's006');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0167342611', 's007');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0173477777', 's008');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0123333809', 's009');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0129999569', 's010');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0186473520', 's011');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0193293760', 's012');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0193682736', 's013');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0173863872', 's014');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0137663099', 's015');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0161389336', 's016');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0123894628', 's017');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0133348737', 's018');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0178134701', 's019');

INSERT INTO Stud_contact( s_phoneNo, s_id ) 
VALUES ('0171398461', 's020');

