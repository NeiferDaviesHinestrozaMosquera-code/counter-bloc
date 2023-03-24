import 'package:counter_app/colors_bloc/bloc/colors_bloc.dart';
import 'package:counter_app/counter_bloc/bloc/counter_bloc.dart';
import 'package:counter_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CounterBloc>(
      create: (context) => CounterBloc(),
      child: BlocProvider<ColorBloc>(
        create: (context) => ColorBloc(),
        child:
            MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()),
      ),
    );

    // MultiBlocProvider(providers: [
    //     BlocProvider<CounterBloc>(
    //   create: (context) => CounterBloc(),

    //   ),
    //     BlocProvider<ColorBloc>(
    //   create: (context) => ColorBloc(),

    //   )
    // ],
    //  child:MaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   title: 'Flutter Demo',
    //   theme: ThemeData(

    //     primarySwatch: Colors.blue,
    //   ),
    //   home: const MyHomePage(),
    //   )
    // );
  }
}
