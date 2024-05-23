import 'package:crewmeister_task/models/absence.dart';
import 'package:crewmeister_task/screens/absence_detail_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

void main() {
  group('AbsenceDetailScreen', () {
    testWidgets('should display absence details', (WidgetTester tester) async {
      final absence = Absence(
        memberName: 'John Doe',
        type: 'Sick',
        startDate: DateTime.now(),
        endDate: DateTime.now().add(Duration(days: 1)),
        status: 'Approved',
        memberNote: 'Feeling sick',
        admitterNote: 'Get well soon',
        imagePath: 'assets/images/man1.jpg'
      );

      await tester.pumpWidget(
        MaterialApp(
          home: AbsenceDetailScreen(absence: absence),
        ),
      );

      expect(find.text('Member Name: John Doe'), findsOneWidget);
      expect(find.text('Type: Sick'), findsOneWidget);
      expect(find.text('Status: Approved'), findsOneWidget);
      expect(find.text('Member Note: Feeling sick'), findsOneWidget);
      expect(find.text('Admitter Note: Get well soon'), findsOneWidget);
    });

    // Add more tests for other scenarios
  });
}