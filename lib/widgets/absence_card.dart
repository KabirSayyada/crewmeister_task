import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/absence.dart';
import '../screens/absence_detail_screen.dart';


class AbsenceCard extends StatelessWidget {
  final Absence absence;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');

  AbsenceCard({Key? key, required this.absence}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AbsenceDetailScreen(absence: absence),
          ),
        );
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        margin: const EdgeInsets.all(10),
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset(
                    absence.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      absence.memberName,
                      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 10),
                    Text('Type: ${absence.type}', style: const TextStyle(color: Colors.blueAccent)),
                    Text('Period: ${formatter.format(absence.startDate)} - ${formatter.format(absence.endDate)}', style: const TextStyle(color: Colors.purple)),
                    Text('Status: ${absence.status}', style: const TextStyle(color: Colors.red)),
                    if (absence.memberNote.isNotEmpty) Text('Member Note: ${absence.memberNote}', style: const TextStyle(color: Colors.purple)),
                    if (absence.admitterNote.isNotEmpty) Text('Admitter Note: ${absence.admitterNote}', style: const TextStyle(color: Colors.brown)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


/*class AbsenceCard extends StatelessWidget {
  final Absence absence;
  final DateFormat formatter = DateFormat('yyyy-MM-dd');
  AbsenceCard({super.key, required this.absence});
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(17.0),
      ),
      margin: const EdgeInsets.all(12),
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              absence.memberName,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            const SizedBox(height: 10),
            Text('Type: ${absence.type}', style: const TextStyle(color: Colors.blueAccent)),
            Text('Period: ${formatter.format(absence.startDate)} - ${formatter.format(absence.endDate)}', style: TextStyle(color: Colors.orange)),
            Text('Status: ${absence.status}', style: const TextStyle(color: Colors.red)),
            if (absence.memberNote.isNotEmpty) Text('Member Note: ${absence.memberNote}', style: const TextStyle(color: Colors.purple)),
            if (absence.admitterNote.isNotEmpty) Text('Admitter Note: ${absence.admitterNote}', style: const TextStyle(color: Colors.brown)),
          ]
        ),
      ),
    );
  }
}*/