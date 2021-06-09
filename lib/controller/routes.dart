import 'package:counter/view/counter.dart';
import 'package:flutter/material.dart';

// -----------------------------------------------------------------------------
// Type : Helper Class
// App Routes Class that contain all screens id
// -----------------------------------------------------------------------------
abstract class AppRoutes {
  const AppRoutes();

  static Map<String, WidgetBuilder> routes = {
    CounterView.id: (BuildContext context) => const CounterView(),
  };
}
