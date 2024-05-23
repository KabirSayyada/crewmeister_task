import 'package:crewmeister_task/provider/absence_provider.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AbsenceProvider', () {
    AbsenceProvider provider;

    setUp(() {
      provider = AbsenceProvider();
    });

    test('should return total absences', () {
      AbsenceProvider provider = AbsenceProvider();
      expect(provider.getTotalAbsences(), equals(0));
    });

    test('should filter absences by type', () {
      AbsenceProvider provider = AbsenceProvider();
      provider.filterAbsencesByType('Sick');
      expect(provider.absences.every((absence) => absence.type == 'Sick'), isTrue);
    });

    test('should reset absences', () {
      AbsenceProvider provider = AbsenceProvider();
      provider.reset();
      expect(provider.getTotalAbsences(), equals(0));
    });

    // This is a placeholder test and might not work in your case
    test('should fetch next page', () async {
      AbsenceProvider provider = AbsenceProvider();
      await provider.fetchNextPage();
      expect(provider.getTotalAbsences(), equals(10)); // Assuming fetchNextPage fetches 10 absences
    });

    // Add more tests for other methods in the AbsenceProvider class
  });
}