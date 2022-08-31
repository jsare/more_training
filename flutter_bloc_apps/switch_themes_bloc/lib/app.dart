import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:switch_themes_bloc/ui/global/theme/bloc/theme_bloc.dart';

import 'ui/home/home_page.dart';

class ThemeApp extends StatelessWidget {
  const ThemeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, InitialState>(
        builder: _buildWithTheme,
      ),
    );
  }

  Widget _buildWithTheme(BuildContext context, InitialState state) {
    return MaterialApp(
      title: 'Theme App',
      theme: state.themeData,
      home: const HomePage(),
    );
  }
}
