import 'package:counter/controller/state_management/app_bloc_observer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:counter/controller/routes.dart';
import 'package:counter/view/counter.dart';
import 'package:flutter/material.dart';

void main() {
  Bloc.observer = AppBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Counter",
      debugShowCheckedModeBanner: false,
      home: const CounterView(),
      routes: AppRoutes.routes,
    );
  }
}
