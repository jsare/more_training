import 'package:flutter/material.dart';

import 'timer/view/timer_page.dart';

import 'package:google_fonts/google_fonts.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Timer App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(109, 234, 255, 1),
        textTheme: GoogleFonts.manropeTextTheme(textTheme).copyWith(
          headline2: const TextStyle(
              color: Colors.indigo, fontWeight: FontWeight.bold),
        ),
        colorScheme: const ColorScheme.light(
            secondary: Colors.indigo,
            onSecondary: Color.fromARGB(255, 255, 255, 255)),
      ),
      home: const TimerPage(),
    );
  }
}
