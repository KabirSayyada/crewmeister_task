import 'package:flutter/foundation.dart';
import 'package:crewmeister_task/models/absence.dart';
import 'package:crewmeister_task/services/absence_service.dart';

class AbsenceProvider with ChangeNotifier {
  List<Absence> _absences = [];
  int _start = 0;
  final int _limit = 10;
  final AbsenceService _absenceService = AbsenceService();

  //Future<void> fetchAbsences() async {
  //_absences = _absenceService.getAbsences();
  //notifyListeners();
  //}
  Future<void> fetchAbsences(int start, int limit) async {
    List<Absence> newAbsences = _absenceService.getAbsences(start, limit);
    _absences.addAll(newAbsences);
    _start += _limit;
    notifyListeners();
  }


  List<Absence> get absences => _absences; // Getter for absences not in success trial

  List<Absence> getAbsences() {
    return [..._absences];
  }

  int getTotalAbsences() {
    return _absences.length;
  }

  List<Absence> _originalAbsences = [];

  void filterAbsencesByType(String type) {
    if (_originalAbsences.isEmpty) {
      _originalAbsences = [..._absences];
    }
    if (type == 'All') {
      _absences = [..._originalAbsences];
    } else {
      _absences = _originalAbsences.where((absence) => absence.type == type).toList();
    }
    notifyListeners();
  }


  void filterAbsencesByDate(DateTime startDate, DateTime endDate) {
    _absences = _absences.where((absence) => absence.startDate.isAfter(startDate) && absence.endDate.isBefore(endDate)).toList();
    notifyListeners();
  }

  void reset() {
    _start = 0;
    _absences = [];
  }

  Future<void> fetchNextPage() async {
    _start += _limit;
    await fetchAbsences(_start, _limit);
  }
}