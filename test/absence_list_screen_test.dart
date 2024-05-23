import 'package:crewmeister_task/provider/absence_provider.dart';
import 'package:crewmeister_task/screens/absence_list_screen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main() {
 // group('AbsenceListScreen', () {
    testWidgets('should display "No absences found" when there are no absences', (WidgetTester tester) async {
      await tester.pumpWidget(
        ChangeNotifierProvider(
          create: (context) => AbsenceProvider(),
          child: MaterialApp(home: AbsenceListScreen()),
        ),
      );

      expect(find.text('No absences found'), findsOneWidget);
    });

    }




    // Add more tests for other scenarios