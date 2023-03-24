import 'dart:developer';

import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:counter_app/colors_bloc/bloc/colors_bloc.dart';
import 'package:counter_app/colors_bloc/bloc/colors_state.dart';
import 'package:counter_app/counter_bloc/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Contador con bloc'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<CounterBloc, CounterState>(
            buildWhen: (previous, current) {
              print(previous.counter);
              print(current.counter);
              return true;
            },
            builder: (context, state) {
              return Text(
                state.counter.toString(),
                style: TextStyle(fontSize: 25),
              );
            },
          ),

          // BlocConsumer<CounterBloc,CounterState>(
          //   builder: (context,state) {
          //   return Text(state.counter.toString());
          // },
          //  listener: (context,state){
          //    if ( state.counter >= 5) {
          //      final snackBar = SnackBar(
          //         /// need to set following properties for best effect of awesome_snackbar_content
          //         elevation: 0,
          //         behavior: SnackBarBehavior.floating,
          //         backgroundColor: Colors.transparent,
          //         content: AwesomeSnackbarContent(
          //           title: 'On Snap!',
          //           message:
          //               'This is an example Bloc!',

          //           /// change contentType to ContentType.success, ContentType.warning or ContentType.help for variants
          //           contentType: ContentType.success,
          //         ),
          //       );

          //       ScaffoldMessenger.of(context)
          //         ..hideCurrentSnackBar()
          //         ..showSnackBar(snackBar);
          //   }
          //  }),

          // BlocSelector<CounterBloc,CounterState,bool>(selector: (state) => state.counter >= 3 ? true : false , builder: (context,state) {
          //   return Center(

          //     child: Container(

          //       color: state? Colors.greenAccent : Colors.redAccent,
          //       width: 200,
          //       height: 200,
          //     ),
          //   );
          // }),

          BlocBuilder<ColorBloc, ColorState>(
            builder: (context, state) {
              return Container(
                color: state.color,
                width: 200,
                height: 200,
              );
            },
          ),

          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterIncrementEvent());
                  context.read<ColorBloc>().add(CounterIncrementEvent());
                },
                child: Icon(
                  Icons.add,
                  color: Colors.greenAccent,
                ),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterResetEvent());
                  context.read<ColorBloc>().add(CounterResetEvent());
                },
                child: Icon(Icons.reset_tv),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterBloc>().add(CounterDecrementEvent());
                  context.read<ColorBloc>().add(CounterDecrementEvent());
                },
                child: Icon(
                  Icons.remove_outlined,
                  color: Colors.redAccent,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
