import 'package:bloc/bloc.dart';
import 'package:counter_app/colors_bloc/bloc/colors_state.dart';
import 'package:counter_app/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';



class ColorBloc extends Bloc<CounterEvent, ColorState> {
  ColorBloc() : super(ColorInitial()) {
    on<CounterIncrementEvent>((event, emit) {

      emit(ColorIncrement(Colors.greenAccent));
      }
    );

    on<CounterDecrementEvent>((event, emit) {

      emit(ColorDecrement(Colors.redAccent));
      }
    );

    on<CounterResetEvent>((event, emit) {
      emit(ColorReset(Colors.black87));
    });
  }
}
