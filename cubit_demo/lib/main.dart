import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:cubit_demo/counter_observer.dart';
import 'package:cubit_demo/app.dart';

void main() {
  Bloc.observer = const CounterObserver();
  runApp(CounterApp());
}
