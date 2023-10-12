import 'package:cubit_demo/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CounterCubit>();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green.shade600,
          title: const Text(
            'CODE WITH CUBIT',
            style: TextStyle(
              fontSize: 26.0,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          elevation: 4.0,
        ),
        body: Center(child: BlocBuilder<CounterCubit, int>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FloatingActionButton(
                      child: const Icon(Icons.remove),
                      onPressed: () => cubit.decrementValue(),
                    ),
                    Text(
                      '----> $state <----',
                      style: const TextStyle(
                        fontSize: 26.0,
                      ),
                    ),
                    FloatingActionButton(
                      child: const Icon(Icons.add),
                      onPressed: () => cubit.incrementValue(),
                    ),
                  ],
                ),
                const SizedBox(height: 20.0),
                FloatingActionButton(
                  child: const Icon(Icons.restart_alt_outlined),
                  onPressed: () => cubit.restartValue(),
                ),
              ],
            );
          },
        )));
  }
}
