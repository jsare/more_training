import 'package:flutter/material.dart';

import 'timer/view/timer_page.dart';

class TimerApp extends StatelessWidget {
  const TimerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Timer App',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(109, 234, 255, 1),
        colorScheme: const ColorScheme.light(
          secondary: Color.fromARGB(255, 113, 118, 255),
        ),
      ),
      home: const TimerPage(),
    );
  }
}
