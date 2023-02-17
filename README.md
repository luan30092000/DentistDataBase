# DentistDataBase
## Project Description
The database model is for a dental clinic with multiple dentists, each of whom has their own set of patients. For each patient, there may be several appointments scheduled on different days and times. Additionally, each patient may have one or more insurance policies, which we need to track in our database. For patients who don't have insurance, we need to store their payment history in detail, including whether they paid all expenses at once or in installments. Furthermore, we need to track referrals made by patients, including those from their friends and family. All of this information will be stored in the database.
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
![This is an image](https://myoctocat.com/assets/images/base-octocat.svg)


