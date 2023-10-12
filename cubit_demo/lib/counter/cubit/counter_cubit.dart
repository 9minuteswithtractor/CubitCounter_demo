import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  // that's the initial state of the Cubit
  CounterCubit({required this.counterRange}) : super(counterRange.initialValue);

  final CounterRange counterRange;

  // TODO : Setting up some boundaries / range
  // TODO : Not sure if i need to encapsulate these variables as private tho??
  // TODO : separate  the private vars from this Cubit class

  void incrementValue() {
    if (state < counterRange.maxValue) return emit(state + 1);
  }

  void decrementValue() {
    if (state > counterRange.minValue) return emit(state - 1);
  }

  void restartValue() {
    emit(counterRange.initialValue);
  }
}

class CounterRange {
  final int minValue = 0;
  final int maxValue = 10;
  final int initialValue = 0;
}
