import 'package:flutter/material.dart';
import 'dashboard_screen.dart';

void main() {
  runApp(const MyApp()); // runApp harus berada di dalam fungsi main
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Expense Tracker Modul 4',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      // Parameter home dikembalikan ke tempat semestinya (di dalam MaterialApp)
      home: const DashboardScreen(), 
    );
  }
}