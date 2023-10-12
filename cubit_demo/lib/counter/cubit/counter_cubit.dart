import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<int> {
  // that's the initial state of the Cubit
  CounterCubit() : super(0);

  // TODO : Setting up some boundaries / range
  // TODO : Not sure if i need to encapsulate these variables as private tho??
  final int _minVal = 0;
  final int _maxValue = 10;

  void incrementValue() {
    if (state < _maxValue) return emit(state + 1);
  }

  void decrementValue() {
    if (state > _minVal) return emit(state - 1);
  }

  void restartValue() {
    emit(0);
  }
}
