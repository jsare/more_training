part of 'counter_cubit.dart';

abstract class CounterCubitState extends Equatable {}

class CounterCubitInitial extends CounterCubitState {
  int count;

  CounterCubitInitial(this.count);

  @override
  List<Object?> get props => [count];
}
