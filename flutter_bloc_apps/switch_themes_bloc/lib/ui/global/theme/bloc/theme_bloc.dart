// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, InitialState> {
  ThemeBloc()
      : super(InitialState(themeData: appThemeData[AppTheme.greenLight])) {
    on<ThemeChanged>((event, emit) {
      emit(InitialState(themeData: appThemeData[event.theme]));
    });
  }
}
