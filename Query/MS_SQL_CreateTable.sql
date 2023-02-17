CREATE TABLE Patient (
	PatientID	NUMERIC IDENTITY(1,1),
	First_Name	VARCHAR(30) NOT NULL,
	Last_Name   VARCHAR(30) NOT NULL,
	DOB			DATE,
	Gender		CHAR(1) CHECK (Gender = 'F' OR Gender = 'M' OR Gender = 'O'),
	Address		VARCHAR(50),
	Phone		VARCHAR(10) NOT NULL,

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