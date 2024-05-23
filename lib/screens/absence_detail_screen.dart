

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/absence.dart';



class AbsenceDetailScreen extends StatelessWidget {
  final Absence absence;

  const AbsenceDetailScreen({Key? key, required this.absence}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Absence Details'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: 'absenceImage${absence.imagePath}',
              child: Image.asset(
                absence.imagePath,
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Member Name: ${absence.memberName}',
                    style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Text('Type: ${absence.type}'),
                  Text('Start Date: ${absence.startDate}'),
                  Text('End Date: ${absence.endDate}'),
                  Text('Status: ${absence.status}', style: const TextStyle(color: Colors.red)),
                  if (absence.memberNote.isNotEmpty) Text('Member Note: ${absence.memberNote}', style: const TextStyle(color: Colors.purple)),
                  if (absence.admitterNote.isNotEmpty) Text('Admitter Note: ${absence.admitterNote}', style: const TextStyle(color: Colors.brown)),
                  if (absence.acceptanceCriteria.isNotEmpty) Text('Acceptance Criteria: ${absence.acceptanceCriteria}', style: const TextStyle(color: Colors.purple)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}