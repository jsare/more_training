import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_themes_bloc/app.dart';

import 'bloc_observer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(const ThemeApp());
}
