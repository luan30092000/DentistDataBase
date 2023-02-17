# DentistDataBase
## Project Description
The purpose of this project is to design a comprehensive database model for a dental clinic that will store information related to staff members, patients, payment methods, insurance policies, and more. This project is being developed as an academic project for a database systems course. 

As an extension to this project, I am also building a web application that will allow users to input data and use PHP to send that data to a MySQL database on a local server using the MAMP application.
Requirement (macOS): MAMP(free), mySQL
- An insurance policy is uniquely identified by the company name, has a policy number and coverage percent.
- A payment is uniquely identified by paymentID, has date and amount paid.
- A referral is a weak entity uniquely identified by patientID and the referral’s name. It has referral’s date of birth and name.
- An appointment is uniquely identified by an appointmentID, has a date, start time and description.
- A patient is uniquely identified by a patientID, has name, date of birth, gender, phone, and address , payment info which includes patient’s card number, ccv and expiry date.
- Dentist is uniquely identified by name (composed of name and date of birth), and has a phone number.
## Cardinality and Participations
* Each dentist has 1 or more appointments
* Some patients have 1 or more insurance policies
* Some patients makes 1 or more payments.
* All patients books 1 or more appointments with their dentist
* Some patients have 1 or more referrals
* Each appointment is booked by 1 patient
* Each appointment is handled by 1 dentist
* Each insurance policy are associated with 1 patient
* Each payment is associated with 1 patient
* Each Referral is associated with 1 patient
* Each insurance policy pays for an appointment
* All payments pay for an appointment
* Each appointment is paid by either or both the patient and the insurance policy.
## EER Modeling Diagram
![EER Modeling Diagram](https://github.com/luan30092000/DentistDataBase/blob/main/Asset/EER_Modeling.png)
## ER-Model Mapping to Database Relational Schema
* Patient (PatientID, DOB, First_Name, Last_Name, Gender, Address, Phone)
* Dentist ((DOB, First_Name, Last_Name), Phone)
* Appointment (AppointmentID , Date, StartTime, Duration, Description, Charge, PatientID, (DOB, Dentist_FirstName, Dentist_LastName))
* Insurance ( CompanyName, Policy#, Coverage Percentage) Payment ( PaymentID, Date, Amount)
* PayByCash(PaymentID, PatientID) PayByInsurance(PaymentID)
* PatientReferPatient (RefererID, RefereeID) PatientPaymentInfo(Card#, ExpiredDate, PatientID)
* PatientHasInsurance ((PatientID, InsuranceCompName)) PaymentPaysAppointment(PaymentID, AppointmentID) InsuranceCoversPaymentByInsurance( CompName, InsurancePaymentID)
## Normalization, up to BCNF
- `Patient`
	+ PatientID -> DOB, First_Name, Last_Name, Gender, Address, Phone
	+ 1NF: No multivalued attributes or nested relations in Patient.
	+ 2NF: DOB, First_Name, Last_Name, Gender, Address and Phone are fully functionally dependent on PatientID. 
	+ 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Patient, the LHS is the key.
- `Dentist`
	+ {DOB, First_Name, Last_Name } -> Phone
	+ 1NF: No multivalued attributes or nested relations in Dentist.
	+ 2NF: Phone is fully functionally dependent on {DOB, First_Name, Last_Name }. 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Dentist, the LHS is the key.
- `Appointment`
	+ AppointmentID -> Date, StartTime, Duration, Description, PatientID, { DOB, Name }
	+ 1NF: No multivalued attributes or nested relations in Appointment.
	+ 2NF: Date, StartTime, Duration, Description, PatientID, and { DOB, Name } are fully functionally dependent on AppointmentID. 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Appointment, the LHS is the key.
- `Insurance`
	+ {CompanyName, Policy#} -> Coverage Percentage
	+ 1NF: No multivalued attributes or nested relations in Insurance.
	+ 2NF: Coverage Percentage are fully functionally dependent on CompanyName, Policy#. 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Insurance, the LHS is the key.
- `Payment`
	+ PaymentID -> Date, Amount
	+ 1NF: No multivalued attributes or nested relations in Payment.
	+ 2NF: Date and Amount are fully functionally dependent on PaymentID. 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Payment, the LHS is the key.
- `Pay_by_Cash`
	+ PaymentID -> PatientID
	+ 1NF: No multivalued attributes or nested relations in Pay_by_Cash. 2NF: PatientID are fully functionally dependent on PaymentID. 3NF: There are no transitive dependencies.
	+ BCNF: For all FDs of Pay_by_Cash_by_Cash, the LHS is the key.
- `Pay_by_Insurrance`
	+ No function dependency
- `PatientPaymentInfo`
	+ No function dependency
- `PatientHasInsurance`
	+ No function dependency
- `PaymentPaysAppointment` 
	+ No function dependency
- `InsuranceCoversPaymentByInsurance` 
	+ No function dependency
## Data Types (Domain) and Constraits
- Patient
	+ PatientID `NUMERIC` 
	+ Name `VARCHAR(30)` DOB DATE
	+ Address `VARCHAR(50)` 
	+ Gender `CHAR(1)` 
	+ Phone `VARCHAR(10)` 
	+ Card# `VARCHAR(16)` 
	+ Expired Date `DATE`
- Dentist
	+ Name `VARCHAR(30)`	Constraint CHECK only ‘F’, ‘M’, ‘O’ are accepted
	+ DOB `DATE` 
	+ Phone `CHAR(10)`
- Appointment 
	+ AppointmentID `NUMERIC`
	+ Date  `DATE`
	+ StartTime `TIME`
	+ Duration `SMALLINT`
	+ Description `VARCHAR(100)`
	+ Charge `NUMERIC`
- Payment_by_Cash
	+ PaymentID `NUMERIC`
	+ Amount `NUMERIC`
- Payment_by_Insurrance
	+ PaymentID `NUMERIC`
	+ PaymentDate `DATE`
	+ Amount `NUMERIC`
- Insurance
	+ CompName `VARCHAR(30)`
	+ %Coverage `NUMERIC` `CONSTRAINT` CHECK Coverage > 0 and Coverage <= 100
	+ PolicyNumber `NUMERIC`
## Query
Create table data
``` SQL {
CREATE TABLE Patient (
	PatientID NUMERIC IDENTITY(1,1),
	First_Name VARCHAR(30) NOT NULL,
	Last_Name VARCHAR(30) NOT NULL,
	DOB	DATE,
	Gender CHAR(1) CHECK (Gender = 'F' OR Gender = 'M' OR Gender = 'O'),
	Address VARCHAR(50),
	Phone VARCHAR(10) NOT NULL,

	PRIMARY KEY (PatientID)
);

CREATE TABLE Dentist (
	First_Name VARCHAR(30),
	Last_Name VARCHAR(30),
	DOB DATE,
	Phone VARCHAR(10) NOT NULL,

	PRIMARY KEY(First_Name, Last_Name, DOB)
);

CREATE TABLE Appointment (
	AppointmentID NUMERIC IDENTITY(1,1),
	Date DATE NOT NULL,
	StartTime TIME NOT NULL,
	Duration SMALLINT NOT NULL CHECK (Duration > 0),
	Description VARCHAR(100),
	PatientID NUMERIC, 
	Dentist_FirstName VARCHAR(30),
	Dentist_LastName VARCHAR(30),
	Dentist_DOB DATE,
	Cost FLOAT,

	PRIMARY KEY (AppointmentID),
	FOREIGN KEY (PatientID) REFERENCES Patient ON DELETE CASCADE,
	FOREIGN KEY (Dentist_FirstName, Dentist_LastName, Dentist_DOB) REFERENCES Dentist ON DELETE CASCADE
);

CREATE TABLE Insurance (
	CompanyName VARCHAR(30),
	Policy_Num NUMERIC,
	Coverage_Percent NUMERIC NOT NULL,

	PRIMARY KEY (CompanyName, Policy_Num)
);

CREATE TABLE Payment (
	PaymentID NUMERIC IDENTITY(1,1),
	PaymentDate DATE,
	Amount FLOAT NOT NULL,

	PRIMARY KEY (PaymentID)
);

CREATE TABLE PaymentByCash (
	PaymentID NUMERIC,
	PatientID NUMERIC,
	
	PRIMARY KEY (PaymentID),
	FOREIGN KEY (PaymentID) REFERENCES Payment,
	FOREIGN KEY (PatientID) REFERENCES Patient
);

CREATE TABLE PaymentByInsurance (
	PaymentID NUMERIC,

	PRIMARY KEY(PaymentID),
	FOREIGN KEY(PaymentID) REFERENCES Payment
);

CREATE TABLE PatientPaymentInfo (
	PatientID NUMERIC, 
	Card_Num VARCHAR(16),
	Expired_Date DATE,

	PRIMARY KEY (PatientID, Card_Num, Expired_Date),
	FOREIGN KEY (PatientID) REFERENCES Patient ON DELETE CASCADE
);

CREATE TABLE PatientReferPatient (
	RefererID NUMERIC,
	RefereeID NUMERIC,

	PRIMARY KEY (RefererID, RefereeID),
	FOREIGN KEY(RefererID) REFERENCES Patient,
	FOREIGN KEY(RefereeID) REFERENCES Patient
);

CREATE TABLE PatientHasInsurance (
	PatientID NUMERIC,
	Insurance_CompName VARCHAR(30),
	Insurance_PolicyNum NUMERIC,

	PRIMARY KEY (PatientID, Insurance_CompName, Insurance_PolicyNum),
	FOREIGN KEY (PatientID) REFERENCES Patient ON DELETE CASCADE,
	FOREIGN KEY (Insurance_CompName, Insurance_PolicyNum) REFERENCES Insurance ON DELETE CASCADE
);

CREATE TABLE PaymentPaysForAppointment (
	PaymentID NUMERIC,
	AppointmentID NUMERIC,

	PRIMARY KEY (PaymentID, AppointmentID),
	FOREIGN KEY (PaymentID) REFERENCES Payment,
	FOREIGN KEY (AppointmentID) REFERENCES Appointment
);

CREATE TABLE InsuranceCoversPaymentByInsurance (
	Insurance_CompName VARCHAR(30),
	Insurance_PolicyNum NUMERIC,
	InsurancePaymentID NUMERIC,

	PRIMARY KEY(Insurance_CompName, Insurance_PolicyNum, InsurancePaymentID),
	FOREIGN KEY(Insurance_CompName, Insurance_PolicyNum) REFERENCES Insurance,
	FOREIGN KEY(InsurancePaymentID) REFERENCES PaymentByInsurance
);
}```