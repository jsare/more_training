import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:timer_bloc/timer_observer.dart';

import 'app.dart';

void main() {
  Bloc.observer = TimerObserver();
  runApp(const TimerApp());
}
