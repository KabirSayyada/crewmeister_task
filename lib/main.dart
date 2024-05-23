import 'package:crewmeister_task/provider/absence_provider.dart';
import 'package:crewmeister_task/screens/absence_list_screen.dart';
import 'package:crewmeister_task/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => AbsenceProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Absence Manager',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}