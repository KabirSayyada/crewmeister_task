class Absence {
  String memberName;
  String type;
  DateTime startDate;
  DateTime endDate;
  String memberNote;
  String status;
  String admitterNote;
  String imagePath;
  String acceptanceCriteria;

  Absence({
    required this.memberName,
    required this.type,
    required this.startDate,
    required this.endDate,
    required this.memberNote,
    required this.status,
    this.admitterNote = '',
    this.imagePath = '',
    this.acceptanceCriteria = ''
  });
}