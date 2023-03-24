part of 'counter_bloc.dart';

@immutable
abstract class CounterEvent { }

class CounterIncrementEvent extends CounterEvent { }

class CounterDecrementEvent extends CounterEvent { }

class CounterResetEvent extends CounterEvent { }
