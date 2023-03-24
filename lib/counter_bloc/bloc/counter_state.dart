part of 'counter_bloc.dart';

@immutable
abstract class CounterState {
  int counter  = 0;
  CounterState({required this.counter});
}

class CounterInitial extends CounterState {
  CounterInitial() : super (counter: 0);
// CounterInitial({required super.counter});
}

class CounterIncrement extends CounterState {
  CounterIncrement(int increasedCounter) : super (counter: increasedCounter);
// CounterInitial({required super.counter});
}


class CounterDecrement extends CounterState {
  CounterDecrement(int decreasedCounter) : super (counter: decreasedCounter);
// CounterInitial({required super.counter});
}

class CounterReset extends CounterState {
  CounterReset (int resetedCounter) : super (counter: 0);
}

