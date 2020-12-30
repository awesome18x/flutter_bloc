import 'package:couterApp/blocs/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'couter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Stream<int> aStreamFunction() async* {
    yield 2;
    yield 5;
    yield 10;

  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      title: 'Increment/Decrement App using Bloc',
      home: BlocProvider<CounterBloc>(
        create: (context) => CounterBloc(),
        child: CounterPage(),
      )
    );
  }
}
