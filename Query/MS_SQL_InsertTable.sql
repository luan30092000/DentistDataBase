INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Zara', 'Dafforne', '2006-08-29', 'F', '9684 Warbler Point', '4517163796');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Daisy', 'Tillett', '1984-05-24', 'F', '530 Dahle Drive', '2112250640');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Antoinette', 'Ranaghan', '1993-10-19', 'F', '2034 Tennyson Alley', '4079255559');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Moreen', 'Sibbons', '1972-12-18', 'F', '74547 Gina Terrace', '3107966917');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Kaitlin', 'Grebert', '2011-03-21', 'F', '899 Starling Terrace', '4892860133');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Matilda', 'Jeavon', '2001-01-03', 'F', '50117 Heffernan Alley', '9751082552');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Julienne', 'Olivier', '1972-07-20', 'F', '63 West Trail', '7061567061');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Laurence', 'Sumpton', '1980-12-03', 'M', '2848 Glacier Hill Hill', '9876876641');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Garrett', 'Scudamore', '1976-01-30', 'M', '0559 Monica Road', '8092364942');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Albert', 'Ruilton', '2014-06-12', 'M', '35 Magdeline Hill', '4213616745');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Carleton', 'Kingsbury', '1965-06-30', 'M', '49 Mallard Parkway', '1808514372');
INSERT INTO Patient (First_Name, Last_Name, DOB, Gender, Address, Phone) VALUES ('Rupert', 'Argontt', '1975-06-15', 'M', '9 Schiller Park', '7421735947');

/* Dentist */
INSERT INTO Dentist (First_Name, Last_Name, DOB, Phone) VALUES ('Angelina', 'Greene', '1969-11-27', '6662433555');
INSERT INTO Dentist (First_Name, Last_Name, DOB, Phone) VALUES ('Rhea', 'Mycroft', '1982-09-25', '2897086923');
INSERT INTO Dentist (First_Name, Last_Name, DOB, Phone) VALUES ('Nicolas', 'Westoff', '1975-11-07', '9394996404');

/*January Appointments*/
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-17', '09:30', 45, 'Cleaning', 1, 'Nicolas', 'Westoff', '1975-11-07', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-17', '10:00', 45, 'Cleaning', 9, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-18', '09:00', 60, 'Filling', 9, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-18', '14:45', 45, 'Cleaning', 4, 'Rhea', 'Mycroft', '1982-09-25', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-19', '10:15', 45, 'Cleaning', 2, 'Nicolas', 'Westoff', '1975-11-07', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-19', '11:00', 45, 'Cleaning', 11, 'Rhea', 'Mycroft', '1982-09-25', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-19', '11:00', 45, 'Cleaning', 8, 'Nicolas', 'Westoff', '1975-11-07', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-01-20', '09:00', 60, 'Filling', 2, 'Nicolas', 'Westoff', '1975-11-07', 500);

/*March Appointments*/
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-07', '09:30', 45, 'Cleaning', 6, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-08', '09:30', 45, 'Cleaning', 12, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-08', '09:30', 45, 'Cleaning', 5, 'Nicolas', 'Westoff', '1975-11-07', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-08', '09:45', 45, 'Cleaning', 7, 'Rhea', 'Mycroft', '1982-09-25', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-10', '13:30', 60, 'Filling', 12, 'Angelina', 'Greene', '1969-11-27', 500);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-14', '11:15', 45, 'Cleaning', 3, 'Rhea', 'Mycroft', '1982-09-25', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-03-14', '10:30', 45, 'Cleaning', 10, 'Nicolas', 'Westoff', '1975-11-07', 300);

/* July Appointments*/
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-07-11', '09:30', 45, 'Cleaning', 1, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-07-11', '10:15', 45, 'Cleaning', 2, 'Angelina', 'Greene', '1969-11-27', 300);
INSERT INTO Appointment (Date, StartTime, Duration, Description, PatientID, Dentist_FirstName, Dentist_LastName, Dentist_DOB, Cost) 
VALUES ('2022-07-12', '09:30', 45, 'Cleaning', 8, 'Rhea', 'Mycroft', '1982-09-25', 300);


/*Insurance*/
INSERT INTO Insurance (CompanyName, Policy_Num, Coverage_Percent) VALUES ('Pacific Blue Cross', 5114, 90);
INSERT INTO Insurance (CompanyName, Policy_Num, Coverage_Percent) VALUES ('Sunlife', 6939, 80);
INSERT INTO Insurance (CompanyName, Policy_Num, Coverage_Percent) VALUES ('Manulife', 7884, 75);
INSERT INTO Insurance (CompanyName, Policy_Num, Coverage_Percent) VALUES ('Canada Life', 7884, 100);

/* PatientHasInsurance */
INSERT INTO PatientHasInsurance VALUES (1, 'Pacific Blue Cross', 5114);
INSERT INTO PatientHasInsurance VALUES (1, 'Sunlife', 6939);
INSERT INTO PatientHasInsurance VALUES (3, 'Manulife', 7884);
INSERT INTO PatientHasInsurance VALUES (3, 'Sunlife', 6939);
INSERT INTO PatientHasInsurance VALUES (5, 'Manulife', 7884);
INSERT INTO PatientHasInsurance VALUES (6, 'Pacific Blue Cross', 5114);
INSERT INTO PatientHasInsurance VALUES (8, 'Canada Life', 7884);
INSERT INTO PatientHasInsurance VALUES (11, 'Canada Life', 7884);
INSERT INTO PatientHasInsurance VALUES (12, 'Pacific Blue Cross', 5114);

/*Payment*/
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-17', 270); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-17', 30);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-17', 300); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-18', 300); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-18', 500);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-19', 300);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-19', 300);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-19', 240); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-19', 60);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-01-21', 500);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-07', 270); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-07', 30);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-08', 270);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-08', 30);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-08', 210);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-08', 90);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-08', 300); 
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-10', 450);
INSERT INTO Payment (PaymentDate, Amount) VALUES ('2022-03-10', 50); 

INSERT INTO PaymentByInsurance VALUES (1);
INSERT INTO PaymentByInsurance VALUES (2);
INSERT INTO PaymentByCash VALUES (3, 9);
INSERT INTO PaymentByCash VALUES (4, 4);
INSERT INTO PaymentByCash VALUES (5, 9);
INSERT INTO PaymentByInsurance VALUES (6);
INSERT INTO PaymentByCash VALUES (7, 2);
INSERT INTO PaymentByInsurance VALUES (8);
INSERT INTO PaymentByCash VALUES (9, 8);
INSERT INTO PaymentByCash VALUES (10, 2);
INSERT INTO PaymentByInsurance VALUES (11);
INSERT INTO PaymentByCash VALUES (12, 6);
INSERT INTO PaymentByInsurance VALUES (13);
INSERT INTO PaymentByCash VALUES (14, 12);
INSERT INTO PaymentByInsurance VALUES (15);
INSERT INTO PaymentByCash VALUES (16, 5);
INSERT INTO PaymentByCash VALUES (17, 7);
INSERT INTO PaymentByInsurance VALUES (18);
INSERT INTO PaymentByCash VALUES (19, 12);

/*Patient Payment Info*/
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (1, '5007664014917715', '2025-10-09');
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (1, '5007663083370558', '2024-07-26');
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (12, '5002357749305653', '2026-07-05');
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (7, '5002356438947551', '2026-04-29');
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (6, '5010126362082257', '2026-06-08');
INSERT INTO PatientPaymentInfo (PatientID, Card_Num, Expired_Date) VALUES (6, '5010128403168913', '2024-01-07');

/* PaymentPaysForAppointment */
INSERT INTO PaymentPaysForAppointment VALUES (1, 1);
INSERT INTO PaymentPaysForAppointment VALUES (2, 1);
INSERT INTO PaymentPaysForAppointment VALUES (3, 2);
INSERT INTO PaymentPaysForAppointment VALUES (4, 3);
INSERT INTO PaymentPaysForAppointment VALUES (5, 4);
INSERT INTO PaymentPaysForAppointment VALUES (6, 5);
INSERT INTO PaymentPaysForAppointment VALUES (7, 6);
INSERT INTO PaymentPaysForAppointment VALUES (8, 7);
INSERT INTO PaymentPaysForAppointment VALUES (9, 7);
INSERT INTO PaymentPaysForAppointment VALUES (10, 8);
INSERT INTO PaymentPaysForAppointment VALUES (11, 9);
INSERT INTO PaymentPaysForAppointment VALUES (12, 9);
INSERT INTO PaymentPaysForAppointment VALUES (13, 10);
INSERT INTO PaymentPaysForAppointment VALUES (14, 10);
INSERT INTO PaymentPaysForAppointment VALUES (15, 11);
INSERT INTO PaymentPaysForAppointment VALUES (16, 11);
INSERT INTO PaymentPaysForAppointment VALUES (17, 12);
INSERT INTO PaymentPaysForAppointment VALUES (18, 13);
INSERT INTO PaymentPaysForAppointment VALUES (19, 13);

/* InsuranceCoversPaymentByInsurance */
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Pacific Blue Cross', 5114, 1);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Sunlife', 6939, 2);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Canada Life', 7884, 6);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Sunlife', 6939, 8);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Pacific Blue Cross', 5114, 11);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Pacific Blue Cross', 5114, 13);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Manulife', 7884, 15);
INSERT INTO InsuranceCoversPaymentByInsurance VALUES ('Pacific Blue Cross', 5114, 18);

/* PatientReferPatient */
INSERT INTO PatientReferPatient VALUES (1, 3);
INSERT INTO PatientReferPatient VALUES (1, 4);
INSERT INTO PatientReferPatient VALUES (1, 5);
INSERT INTO PatientReferPatient VALUES (7, 11);
INSERT INTO PatientReferPatient VALUES (7, 12);
INSERT INTO PatientReferPatient VALUES (5, 10);