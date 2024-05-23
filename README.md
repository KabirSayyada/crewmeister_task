# crewmeister_task

This project is a solution for company owners, it offers a way for them to handle and manage vacation and absences of employees in a simple and very effective way.



**Running Project**

This project was built with flutter3.1.9 and in Android Studio Iguana. The app can run in android, ios, web etc. The easiest way to run the app if you are using android studio is through the android emulator. If you dont know how to setup the emulator you can learn from the documentation here, https://docs.flutter.dev/get-started/install/windows/mobile

Alternatively if you prefer to run the app through other available methods for example in your physical device, web etc, feel free to go for it.



**FEATURES** 


• With this app a company can see and manage their list of absences including the names of the employees: The AbsenceCard widget which has been implemented displays information For each absence; the following can be seen.
- Member name
- Type of absence
- Period
- Member note (reason for absence)
- Status ( 'Requested', 'Confirmed' or 'Rejected')
- Admitter note


• An absence details screen was added. By clicking on any card showing the absence, more details can be seen about the absence, including Acceptance Criteria.

• In the project the ability to paginate was added to show the first 10 absences with pagination and then loads the others when the user scrolls or clicks the load more button.

• Total number of absences can be seen.

• Absence card was created to show required details of each absence. 

• The ability to filter absences by Type and by Date were added. You can utilize the filters accordingly. 

• Different states were handled correctly: Loading, error, and empty states are all managed through Provider.
