import '../models/absence.dart';

class AbsenceService {

  List<Absence> absences = [
    Absence(
      memberName: 'John Doe',
      type: 'Sickness',
      startDate: DateTime(2022, 1, 1),
      endDate: DateTime(2022, 1, 10),
      memberNote: 'Flu and headache',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/man3.jpg',
      acceptanceCriteria: 'Hospital bill was seen'
    ),
    Absence(
      memberName: 'Jane Doe',
      type: 'Vacation',
      startDate: DateTime(2022, 2, 1),
      endDate: DateTime(2022, 2, 14),
      memberNote: 'Family trip',
      status: 'Requested',
      admitterNote: 'I will review and revert',
      imagePath: 'assets/images/woman1.jpg'
    ),
    // Add more Absence instances here...
    Absence(
      memberName: 'Alice Smith',
      type: 'Sickness',
      startDate: DateTime(2022, 3, 1),
      endDate: DateTime(2022, 3, 5),
      memberNote: 'Cold',
      status: 'Confirmed',
      admitterNote: 'Take care of yourself',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'he has genuine reason'
    ),
    Absence(
      memberName: 'Bob Johnson',
      type: 'Vacation',
      startDate: DateTime(2022, 4, 1),
      endDate: DateTime(2022, 4, 7),
      memberNote: 'Beach trip',
      status: 'Requested',
      admitterNote: 'Its pending review',
      imagePath: 'assets/images/man2.jpg'
    ),
    Absence(
      memberName: 'Eva Davis',
      type: 'Sickness',
      startDate: DateTime(2022, 5, 1),
      endDate: DateTime(2022, 5, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'she never slacks'
    ),
    // Add more Absence instances here...
    Absence(
      memberName: 'Michael Brown',
      type: 'Vacation',
      startDate: DateTime(2022, 6, 1),
      endDate: DateTime(2022, 6, 5),
      memberNote: 'Exploring new city',
      status: 'Rejected',
      admitterNote: 'we are short on staff',
      imagePath: 'assets/images/man3.jpg'
    ),
    Absence(
      memberName: 'Sarah Wilson',
      type: 'Sickness',
      startDate: DateTime(2022, 7, 1),
      endDate: DateTime(2022, 7, 3),
      memberNote: 'Stomachache',
      status: 'Confirmed',
      admitterNote: 'Take care and avoid cold food',
      imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'saw hospital report'
    ),
    Absence(
      memberName: 'David Lee',
      type: 'Vacation',
      startDate: DateTime(2022, 8, 1),
      endDate: DateTime(2022, 8, 7),
      memberNote: 'Hiking trip',
      status: 'Requested',
      admitterNote: 'Not sure hiking will be approved',
      imagePath: 'assets/images/man3.jpg'

    ),
    Absence(
      memberName: 'Emily Chen',
      type: 'Sickness',
      startDate: DateTime(2022, 9, 1),
      endDate: DateTime(2022, 9, 3),
      memberNote: 'Headache',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'Saw medicine prescriptions'
    ),
    Absence(
      memberName: 'Alex Kim',
      type: 'Vacation',
      startDate: DateTime(2022, 10, 1),
      endDate: DateTime(2022, 10, 5),
      memberNote: 'Ski trip',
      status: 'Confirmed',
        imagePath: 'assets/images/man3.jpg',
      acceptanceCriteria: 'he deserves time off'

    ),
    Absence(
      memberName: 'Olivia Wang',
      type: 'Sickness',
      startDate: DateTime(2022, 11, 1),
      endDate: DateTime(2022, 11, 3),
      memberNote: 'Allergy',
      status: 'Confirmed',
      admitterNote: 'Take care',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'he deserves time off'
    ),
    Absence(
      memberName: 'Daniel Liu',
      type: 'Vacation',
      startDate: DateTime(2022, 12, 1),
      endDate: DateTime(2022, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      admitterNote: 'will see what I can do',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Sophia Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 1, 1),
      endDate: DateTime(2023, 1, 3),
      memberNote: 'Cough',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'we have enough staff'
    ),
    Absence(
      memberName: 'William Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 2, 1),
      endDate: DateTime(2023, 2, 5),
      memberNote: 'Road trip',
      status: 'Requested',
      admitterNote: 'to give feedback tomorrow',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Ava Wang',
      type: 'Sickness',
      startDate: DateTime(2023, 3, 1),
      endDate: DateTime(2023, 3, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Take care',
        imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'saw hospital bill'
    ),
    Absence(
      memberName: 'James Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 4, 1),
      endDate: DateTime(2023, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Requested',
      admitterNote: 'its 50/50',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Mia Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 5, 1),
      endDate: DateTime(2023, 5, 3),
      memberNote: 'Stomach flu',
      status: 'Be back in time',
      admitterNote: 'take your meds',
        imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw prescription'
    ),
    Absence(
      memberName: 'Liam Wilson',
      type: 'Vacation',
      startDate: DateTime(2023, 6, 1),
      endDate: DateTime(2023, 6, 5),
      memberNote: 'Beach trip',
      status: 'Requested',
      admitterNote: 'not sure but will try',
      imagePath: 'assets/images/man3.jpg',
    ),
    Absence(
      memberName: 'Emma Lee',
      type: 'Sickness',
      startDate: DateTime(2023, 7, 1),
      endDate: DateTime(2023, 7, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Noah Chen',
      type: 'Vacation',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 8, 7),
      memberNote: 'Mountain hiking',
      status: 'Rejected',
      admitterNote: 'It is dangerous',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Isabella Wang',
      type: 'Sickness',
      startDate: DateTime(2023, 9, 1),
      endDate: DateTime(2023, 9, 3),
      memberNote: 'Cold',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Benjamin Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 10, 1),
      endDate: DateTime(2023, 10, 5),
      memberNote: 'Ski trip',
      status: 'Requested',
      admitterNote: 'will talk to your manager',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Charlotte Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 11, 1),
      endDate: DateTime(2023, 11, 3),
      memberNote: 'Headache',
      status: 'Confirmed',
      admitterNote: 'take your meds',
      imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Henry Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Amelia Chen',
      type: 'Sickness',
      startDate: DateTime(2024, 1, 1),
      endDate: DateTime(2024, 1, 3),
      memberNote: 'Cough',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'mother confirmed it',
    ),
    Absence(
      memberName: 'Daniel Wilson',
      type: 'Vacation',
      startDate: DateTime(2024, 2, 1),
      endDate: DateTime(2024, 2, 5),
      memberNote: 'Road trip',
      status: 'Requested',
      admitterNote: 'we are not sure',
      imagePath: 'assets/images/man1.jpg'
    ),
    Absence(
      memberName: 'Sophia Wang',
      type: 'Sickness',
      startDate: DateTime(2024, 3, 1),
      endDate: DateTime(2024, 3, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw prescription',
    ),
    Absence(
      memberName: 'James Chen',
      type: 'Vacation',
      startDate: DateTime(2024, 4, 1),
      endDate: DateTime(2024, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Rejected',
      admitterNote: 'you are missing a lot',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Mia Liu',
      type: 'Sickness',
      startDate: DateTime(2024, 5, 1),
      endDate: DateTime(2024, 5, 3),
      memberNote: 'Flu',
      status: 'Confirmed',
      admitterNote: 'Take care of yourself',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw hospital bill',
    ),
    Absence(
        memberName: 'John Doe',
        type: 'Sickness',
        startDate: DateTime(2022, 1, 1),
        endDate: DateTime(2022, 1, 10),
        memberNote: 'Flu and headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'Hospital bill was seen'
    ),
    Absence(
        memberName: 'Jane Doe',
        type: 'Vacation',
        startDate: DateTime(2022, 2, 1),
        endDate: DateTime(2022, 2, 14),
        memberNote: 'Family trip',
        status: 'Requested',
        admitterNote: 'I will review and revert',
        imagePath: 'assets/images/woman1.jpg'
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Alice Smith',
        type: 'Sickness',
        startDate: DateTime(2022, 3, 1),
        endDate: DateTime(2022, 3, 5),
        memberNote: 'Cold',
        status: 'Confirmed',
        admitterNote: 'Take care of yourself',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'he has genuine reason'
    ),
    Absence(
        memberName: 'Bob Johnson',
        type: 'Vacation',
        startDate: DateTime(2022, 4, 1),
        endDate: DateTime(2022, 4, 7),
        memberNote: 'Beach trip',
        status: 'Requested',
        admitterNote: 'Its pending review',
        imagePath: 'assets/images/man2.jpg'
    ),
    Absence(
        memberName: 'Eva Davis',
        type: 'Sickness',
        startDate: DateTime(2022, 5, 1),
        endDate: DateTime(2022, 5, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'she never slacks, always giving her best',
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Michael Brown',
        type: 'Vacation',
        startDate: DateTime(2022, 6, 1),
        endDate: DateTime(2022, 6, 5),
        memberNote: 'Exploring new city',
        status: 'Rejected',
        admitterNote: 'we are short on staff',
        imagePath: 'assets/images/man3.jpg'
    ),
    Absence(
        memberName: 'Sarah Wilson',
        type: 'Sickness',
        startDate: DateTime(2022, 7, 1),
        endDate: DateTime(2022, 7, 3),
        memberNote: 'Stomachache',
        status: 'Confirmed',
        admitterNote: 'Take care and avoid cold food',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'saw hospital report'
    ),
    Absence(
        memberName: 'David Lee',
        type: 'Vacation',
        startDate: DateTime(2022, 8, 1),
        endDate: DateTime(2022, 8, 7),
        memberNote: 'Hiking trip',
        status: 'Requested',
        admitterNote: 'Not sure hiking will be approved',
        imagePath: 'assets/images/man3.jpg'

    ),
    Absence(
        memberName: 'Emily Chen',
        type: 'Sickness',
        startDate: DateTime(2022, 9, 1),
        endDate: DateTime(2022, 9, 3),
        memberNote: 'Headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'Saw medicine prescriptions'
    ),
    Absence(
        memberName: 'Alex Kim',
        type: 'Vacation',
        startDate: DateTime(2022, 10, 1),
        endDate: DateTime(2022, 10, 5),
        memberNote: 'Ski trip',
        status: 'Confirmed',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'he deserves time off'

    ),
    Absence(
        memberName: 'Olivia Wang',
        type: 'Sickness',
        startDate: DateTime(2022, 11, 1),
        endDate: DateTime(2022, 11, 3),
        memberNote: 'Allergy',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'he deserves time off'
    ),
    Absence(
      memberName: 'Daniel Liu',
      type: 'Vacation',
      startDate: DateTime(2022, 12, 1),
      endDate: DateTime(2022, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      admitterNote: 'will see what I can do',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
        memberName: 'Sophia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 1, 1),
        endDate: DateTime(2023, 1, 3),
        memberNote: 'Cough',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'we have enough staff'
    ),
    Absence(
      memberName: 'William Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 2, 1),
      endDate: DateTime(2023, 2, 5),
      memberNote: 'Road trip',
      status: 'Requested',
      admitterNote: 'to give feedback tomorrow',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Ava Wang',
        type: 'Sickness',
        startDate: DateTime(2023, 3, 1),
        endDate: DateTime(2023, 3, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'saw hospital bill and it is real'
    ),
    Absence(
      memberName: 'James Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 4, 1),
      endDate: DateTime(2023, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Requested',
      admitterNote: 'its 50/50',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Mia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 5, 1),
        endDate: DateTime(2023, 5, 3),
        memberNote: 'Stomach flu',
        status: 'Be back in time',
        admitterNote: 'take your meds',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'saw prescription'
    ),
    Absence(
      memberName: 'Liam Wilson',
      type: 'Vacation',
      startDate: DateTime(2023, 6, 1),
      endDate: DateTime(2023, 6, 5),
      memberNote: 'Beach trip',
      status: 'Requested',
      admitterNote: 'not sure but will try',
      imagePath: 'assets/images/man3.jpg',
    ),
    Absence(
      memberName: 'Emma Lee',
      type: 'Sickness',
      startDate: DateTime(2023, 7, 1),
      endDate: DateTime(2023, 7, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Noah Chen',
      type: 'Vacation',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 8, 7),
      memberNote: 'Mountain hiking',
      status: 'Rejected',
      admitterNote: 'It is dangerous',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Isabella Wang',
      type: 'Sickness',
      startDate: DateTime(2023, 9, 1),
      endDate: DateTime(2023, 9, 3),
      memberNote: 'Cold',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Benjamin Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 10, 1),
      endDate: DateTime(2023, 10, 5),
      memberNote: 'Ski trip',
      status: 'Requested',
      admitterNote: 'will talk to your manager',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Charlotte Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 11, 1),
      endDate: DateTime(2023, 11, 3),
      memberNote: 'Headache',
      status: 'Confirmed',
      admitterNote: 'take your meds',
      imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Henry Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Amelia Chen',
      type: 'Sickness',
      startDate: DateTime(2024, 1, 1),
      endDate: DateTime(2024, 1, 3),
      memberNote: 'Cough',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'mother confirmed it',
    ),
    Absence(
        memberName: 'Daniel Wilson',
        type: 'Vacation',
        startDate: DateTime(2024, 2, 1),
        endDate: DateTime(2024, 2, 5),
        memberNote: 'Road trip',
        status: 'Requested',
        admitterNote: 'we are not sure',
        imagePath: 'assets/images/man1.jpg'
    ),
    Absence(
      memberName: 'Sophia Wang',
      type: 'Sickness',
      startDate: DateTime(2024, 3, 1),
      endDate: DateTime(2024, 3, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw prescription',
    ),
    Absence(
      memberName: 'James Chen',
      type: 'Vacation',
      startDate: DateTime(2024, 4, 1),
      endDate: DateTime(2024, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Rejected',
      admitterNote: 'you are missing a lot',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Mia Liu',
      type: 'Sickness',
      startDate: DateTime(2024, 5, 1),
      endDate: DateTime(2024, 5, 3),
      memberNote: 'Flu',
      status: 'Confirmed',
      admitterNote: 'Take care of yourself',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw hospital bill',
    ),
    Absence(
        memberName: 'John Doe',
        type: 'Sickness',
        startDate: DateTime(2022, 1, 1),
        endDate: DateTime(2022, 1, 10),
        memberNote: 'Flu and headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'Hospital bill was seen'
    ),
    Absence(
        memberName: 'Jane Doe',
        type: 'Vacation',
        startDate: DateTime(2022, 2, 1),
        endDate: DateTime(2022, 2, 14),
        memberNote: 'Family trip',
        status: 'Requested',
        admitterNote: 'I will review and revert',
        imagePath: 'assets/images/woman1.jpg'
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Alice Smith',
        type: 'Sickness',
        startDate: DateTime(2022, 3, 1),
        endDate: DateTime(2022, 3, 5),
        memberNote: 'Cold',
        status: 'Confirmed',
        admitterNote: 'Take care of yourself',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'he has genuine reason'
    ),
    Absence(
        memberName: 'Bob Johnson',
        type: 'Vacation',
        startDate: DateTime(2022, 4, 1),
        endDate: DateTime(2022, 4, 7),
        memberNote: 'Beach trip',
        status: 'Requested',
        admitterNote: 'Its pending review',
        imagePath: 'assets/images/man2.jpg'
    ),
    Absence(
        memberName: 'Eva Davis',
        type: 'Sickness',
        startDate: DateTime(2022, 5, 1),
        endDate: DateTime(2022, 5, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'she never slacks'
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Michael Brown',
        type: 'Vacation',
        startDate: DateTime(2022, 6, 1),
        endDate: DateTime(2022, 6, 5),
        memberNote: 'Exploring new city',
        status: 'Rejected',
        admitterNote: 'we are short on staff',
        imagePath: 'assets/images/man3.jpg'
    ),
    Absence(
        memberName: 'Sarah Wilson',
        type: 'Sickness',
        startDate: DateTime(2022, 7, 1),
        endDate: DateTime(2022, 7, 3),
        memberNote: 'Stomachache',
        status: 'Confirmed',
        admitterNote: 'Take care and avoid cold food',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'saw hospital report'
    ),
    Absence(
        memberName: 'David Lee',
        type: 'Vacation',
        startDate: DateTime(2022, 8, 1),
        endDate: DateTime(2022, 8, 7),
        memberNote: 'Hiking trip',
        status: 'Requested',
        admitterNote: 'Not sure hiking will be approved',
        imagePath: 'assets/images/man3.jpg'

    ),
    Absence(
        memberName: 'Emily Chen',
        type: 'Sickness',
        startDate: DateTime(2022, 9, 1),
        endDate: DateTime(2022, 9, 3),
        memberNote: 'Headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'Saw medicine prescriptions'
    ),
    Absence(
        memberName: 'Alex Kim',
        type: 'Vacation',
        startDate: DateTime(2022, 10, 1),
        endDate: DateTime(2022, 10, 5),
        memberNote: 'Ski trip',
        status: 'Confirmed',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'he deserves time off'

    ),
    Absence(
        memberName: 'Olivia Wang',
        type: 'Sickness',
        startDate: DateTime(2022, 11, 1),
        endDate: DateTime(2022, 11, 3),
        memberNote: 'Allergy',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'he deserves time off'
    ),
    Absence(
      memberName: 'Daniel Liu',
      type: 'Vacation',
      startDate: DateTime(2022, 12, 1),
      endDate: DateTime(2022, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      admitterNote: 'will see what I can do',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
        memberName: 'Sophia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 1, 1),
        endDate: DateTime(2023, 1, 3),
        memberNote: 'Cough',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'we have enough staff'
    ),
    Absence(
      memberName: 'William Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 2, 1),
      endDate: DateTime(2023, 2, 5),
      memberNote: 'Road trip',
      status: 'Requested',
      admitterNote: 'to give feedback tomorrow',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Ava Wang',
        type: 'Sickness',
        startDate: DateTime(2023, 3, 1),
        endDate: DateTime(2023, 3, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'saw hospital bill'
    ),
    Absence(
      memberName: 'James Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 4, 1),
      endDate: DateTime(2023, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Requested',
      admitterNote: 'its 50/50',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Mia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 5, 1),
        endDate: DateTime(2023, 5, 3),
        memberNote: 'Stomach flu',
        status: 'Be back in time',
        admitterNote: 'take your meds',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'saw prescription'
    ),
    Absence(
      memberName: 'Liam Wilson',
      type: 'Vacation',
      startDate: DateTime(2023, 6, 1),
      endDate: DateTime(2023, 6, 5),
      memberNote: 'Beach trip',
      status: 'Requested',
      admitterNote: 'not sure but will try',
      imagePath: 'assets/images/man3.jpg',
    ),
    Absence(
      memberName: 'Emma Lee',
      type: 'Sickness',
      startDate: DateTime(2023, 7, 1),
      endDate: DateTime(2023, 7, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Noah Chen',
      type: 'Vacation',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 8, 7),
      memberNote: 'Mountain hiking',
      status: 'Rejected',
      admitterNote: 'It is dangerous',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Isabella Wang',
      type: 'Sickness',
      startDate: DateTime(2023, 9, 1),
      endDate: DateTime(2023, 9, 3),
      memberNote: 'Cold',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Benjamin Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 10, 1),
      endDate: DateTime(2023, 10, 5),
      memberNote: 'Ski trip',
      status: 'Requested',
      admitterNote: 'will talk to your manager',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Charlotte Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 11, 1),
      endDate: DateTime(2023, 11, 3),
      memberNote: 'Headache',
      status: 'Confirmed',
      admitterNote: 'take your meds',
      imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Henry Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Amelia Chen',
      type: 'Sickness',
      startDate: DateTime(2024, 1, 1),
      endDate: DateTime(2024, 1, 3),
      memberNote: 'Cough',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'mother confirmed it',
    ),
    Absence(
        memberName: 'Daniel Wilson',
        type: 'Vacation',
        startDate: DateTime(2024, 2, 1),
        endDate: DateTime(2024, 2, 5),
        memberNote: 'Road trip',
        status: 'Requested',
        admitterNote: 'we are not sure',
        imagePath: 'assets/images/man1.jpg'
    ),
    Absence(
      memberName: 'Sophia Wang',
      type: 'Sickness',
      startDate: DateTime(2024, 3, 1),
      endDate: DateTime(2024, 3, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw prescription',
    ),
    Absence(
      memberName: 'James Chen',
      type: 'Vacation',
      startDate: DateTime(2024, 4, 1),
      endDate: DateTime(2024, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Rejected',
      admitterNote: 'you are missing a lot',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Mia Liu',
      type: 'Sickness',
      startDate: DateTime(2024, 5, 1),
      endDate: DateTime(2024, 5, 3),
      memberNote: 'Flu',
      status: 'Confirmed',
      admitterNote: 'Take care of yourself',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw hospital bill',
    ),
    Absence(
        memberName: 'John Doe',
        type: 'Sickness',
        startDate: DateTime(2022, 1, 1),
        endDate: DateTime(2022, 1, 10),
        memberNote: 'Flu and headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'Hospital bill was seen'
    ),
    Absence(
        memberName: 'Jane Doe',
        type: 'Vacation',
        startDate: DateTime(2022, 2, 1),
        endDate: DateTime(2022, 2, 14),
        memberNote: 'Family trip',
        status: 'Requested',
        admitterNote: 'I will review and revert',
        imagePath: 'assets/images/woman1.jpg'
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Alice Smith',
        type: 'Sickness',
        startDate: DateTime(2022, 3, 1),
        endDate: DateTime(2022, 3, 5),
        memberNote: 'Cold',
        status: 'Confirmed',
        admitterNote: 'Take care of yourself',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'he has genuine reason'
    ),
    Absence(
        memberName: 'Bob Johnson',
        type: 'Vacation',
        startDate: DateTime(2022, 4, 1),
        endDate: DateTime(2022, 4, 7),
        memberNote: 'Beach trip',
        status: 'Requested',
        admitterNote: 'Its pending review',
        imagePath: 'assets/images/man2.jpg'
    ),
    Absence(
        memberName: 'Eva Davis',
        type: 'Sickness',
        startDate: DateTime(2022, 5, 1),
        endDate: DateTime(2022, 5, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'she never slacks'
    ),
    // Add more Absence instances here...
    Absence(
        memberName: 'Michael Brown',
        type: 'Vacation',
        startDate: DateTime(2022, 6, 1),
        endDate: DateTime(2022, 6, 5),
        memberNote: 'Exploring new city',
        status: 'Rejected',
        admitterNote: 'we are short on staff',
        imagePath: 'assets/images/man3.jpg'
    ),
    Absence(
        memberName: 'Sarah Wilson',
        type: 'Sickness',
        startDate: DateTime(2022, 7, 1),
        endDate: DateTime(2022, 7, 3),
        memberNote: 'Stomachache',
        status: 'Confirmed',
        admitterNote: 'Take care and avoid cold food',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'saw hospital report'
    ),
    Absence(
        memberName: 'David Lee',
        type: 'Vacation',
        startDate: DateTime(2022, 8, 1),
        endDate: DateTime(2022, 8, 7),
        memberNote: 'Hiking trip',
        status: 'Requested',
        admitterNote: 'Not sure hiking will be approved',
        imagePath: 'assets/images/man3.jpg'

    ),
    Absence(
        memberName: 'Emily Chen',
        type: 'Sickness',
        startDate: DateTime(2022, 9, 1),
        endDate: DateTime(2022, 9, 3),
        memberNote: 'Headache',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'Saw medicine prescriptions'
    ),
    Absence(
        memberName: 'Alex Kim',
        type: 'Vacation',
        startDate: DateTime(2022, 10, 1),
        endDate: DateTime(2022, 10, 5),
        memberNote: 'Ski trip',
        status: 'Confirmed',
        imagePath: 'assets/images/man3.jpg',
        acceptanceCriteria: 'he deserves time off'

    ),
    Absence(
        memberName: 'Olivia Wang',
        type: 'Sickness',
        startDate: DateTime(2022, 11, 1),
        endDate: DateTime(2022, 11, 3),
        memberNote: 'Allergy',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'he deserves time off'
    ),
    Absence(
      memberName: 'Daniel Liu',
      type: 'Vacation',
      startDate: DateTime(2022, 12, 1),
      endDate: DateTime(2022, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      admitterNote: 'will see what I can do',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
        memberName: 'Sophia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 1, 1),
        endDate: DateTime(2023, 1, 3),
        memberNote: 'Cough',
        status: 'Confirmed',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/woman1.jpg',
        acceptanceCriteria: 'we have enough staff'
    ),
    Absence(
      memberName: 'William Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 2, 1),
      endDate: DateTime(2023, 2, 5),
      memberNote: 'Road trip',
      status: 'Requested',
      admitterNote: 'to give feedback tomorrow',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Ava Wang',
        type: 'Sickness',
        startDate: DateTime(2023, 3, 1),
        endDate: DateTime(2023, 3, 3),
        memberNote: 'Fever',
        status: 'Confirmed',
        admitterNote: 'Take care',
        imagePath: 'assets/images/woman3.jpg',
        acceptanceCriteria: 'saw hospital bill'
    ),
    Absence(
      memberName: 'James Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 4, 1),
      endDate: DateTime(2023, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Requested',
      admitterNote: 'its 50/50',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
        memberName: 'Mia Chen',
        type: 'Sickness',
        startDate: DateTime(2023, 5, 1),
        endDate: DateTime(2023, 5, 3),
        memberNote: 'Stomach flu',
        status: 'Be back in time',
        admitterNote: 'take your meds',
        imagePath: 'assets/images/woman2.jpg',
        acceptanceCriteria: 'saw prescription'
    ),
    Absence(
      memberName: 'Liam Wilson',
      type: 'Vacation',
      startDate: DateTime(2023, 6, 1),
      endDate: DateTime(2023, 6, 5),
      memberNote: 'Beach trip',
      status: 'Requested',
      admitterNote: 'not sure but will try',
      imagePath: 'assets/images/man3.jpg',
    ),
    Absence(
      memberName: 'Emma Lee',
      type: 'Sickness',
      startDate: DateTime(2023, 7, 1),
      endDate: DateTime(2023, 7, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Noah Chen',
      type: 'Vacation',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 8, 7),
      memberNote: 'Mountain hiking',
      status: 'Rejected',
      admitterNote: 'It is dangerous',
      imagePath: 'assets/images/man1.jpg',
    ),
    Absence(
      memberName: 'Isabella Wang',
      type: 'Sickness',
      startDate: DateTime(2023, 9, 1),
      endDate: DateTime(2023, 9, 3),
      memberNote: 'Cold',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Benjamin Liu',
      type: 'Vacation',
      startDate: DateTime(2023, 10, 1),
      endDate: DateTime(2023, 10, 5),
      memberNote: 'Ski trip',
      status: 'Requested',
      admitterNote: 'will talk to your manager',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Charlotte Chen',
      type: 'Sickness',
      startDate: DateTime(2023, 11, 1),
      endDate: DateTime(2023, 11, 3),
      memberNote: 'Headache',
      status: 'Confirmed',
      admitterNote: 'take your meds',
      imagePath: 'assets/images/woman1.jpg',
      acceptanceCriteria: 'hospital called',
    ),
    Absence(
      memberName: 'Henry Kim',
      type: 'Vacation',
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 7),
      memberNote: 'Cruise trip',
      status: 'Requested',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Amelia Chen',
      type: 'Sickness',
      startDate: DateTime(2024, 1, 1),
      endDate: DateTime(2024, 1, 3),
      memberNote: 'Cough',
      status: 'Confirmed',
      admitterNote: 'Get well soon',
      imagePath: 'assets/images/woman3.jpg',
      acceptanceCriteria: 'mother confirmed it',
    ),
    Absence(
        memberName: 'Daniel Wilson',
        type: 'Vacation',
        startDate: DateTime(2024, 2, 1),
        endDate: DateTime(2024, 2, 5),
        memberNote: 'Road trip',
        status: 'Requested',
        admitterNote: 'we are not sure',
        imagePath: 'assets/images/man1.jpg'
    ),
    Absence(
      memberName: 'Sophia Wang',
      type: 'Sickness',
      startDate: DateTime(2024, 3, 1),
      endDate: DateTime(2024, 3, 3),
      memberNote: 'Fever',
      status: 'Confirmed',
      admitterNote: 'Take care',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw prescription',
    ),
    Absence(
      memberName: 'James Chen',
      type: 'Vacation',
      startDate: DateTime(2024, 4, 1),
      endDate: DateTime(2024, 4, 7),
      memberNote: 'Beach vacation',
      status: 'Rejected',
      admitterNote: 'you are missing a lot',
      imagePath: 'assets/images/man2.jpg',
    ),
    Absence(
      memberName: 'Mia Liu',
      type: 'Sickness',
      startDate: DateTime(2024, 5, 1),
      endDate: DateTime(2024, 5, 3),
      memberNote: 'Flu',
      status: 'Confirmed',
      admitterNote: 'Take care of yourself',
      imagePath: 'assets/images/woman2.jpg',
      acceptanceCriteria: 'saw hospital bill',
    ),
  ];

  List<Absence> getAbsences(int start, int limit) {
    return absences.skip(start).take(limit).toList();
  }

//List<Absence> getAbsences() {
//return absences;
//}

}
