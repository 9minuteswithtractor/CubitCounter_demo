import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cubit_demo/counter/view/counter_view.dart';
import 'package:cubit_demo/counter/cubit/counter_cubit.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(counterRange: CounterRange()),
      child: const CounterView(),
    );
  }
}
