// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
// ignore: depend_on_referenced_packages
import 'package:meta/meta.dart';

part 'counter_cubit_state.dart';

/// A [Cubit] which manages an [int] as its state,
/// so I passed this parameter to the [CounterCubitInitial] class
class CounterCubit extends Cubit<CounterCubitInitial> {
  CounterCubit() : super(CounterCubitInitial(0));

  void increment() => emit(CounterCubitInitial(state.count + 1));
  void decrement() => emit(CounterCubitInitial(state.count - 1));
}
