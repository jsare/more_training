import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'color_event.dart';
part 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.red) {
    on<RedColorEvent>((event, emit) => emit(Colors.red));
    on<GreenColorEvent>((event, emit) => emit(Colors.green));
  }
}
