import 'package:flutter/material.dart';
import 'package:cubit_demo/counter/view/counter_page.dart';

class CounterApp extends MaterialApp {
  CounterApp({super.key})
      : super(
            home: const CounterPage(),
            debugShowCheckedModeBanner: false,
            theme: ThemeData(useMaterial3: true));
}
