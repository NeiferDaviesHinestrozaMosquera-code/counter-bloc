import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<CounterIncrementEvent>((event, emit) {

      emit(CounterIncrement(state.counter +1));
      }
    );

    on<CounterDecrementEvent>((event, emit) {

      emit(CounterDecrement(state.counter -1));
      }
    );

    on<CounterResetEvent>((event, emit) {
      emit(CounterReset(state.counter = 0));
    });
  }
}
