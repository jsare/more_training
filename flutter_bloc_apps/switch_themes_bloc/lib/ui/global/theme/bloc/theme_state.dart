part of 'theme_bloc.dart';

abstract class ThemeState extends Equatable {}

class InitialState {
  final ThemeData? themeData;
  const InitialState({required this.themeData});

  @override
  List<Object> get props => [themeData!];
}
