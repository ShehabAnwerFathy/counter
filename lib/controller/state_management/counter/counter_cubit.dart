import 'package:counter/controller/state_management/counter/counter_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterStates> {
  static const int _minimumCounterValue = 0;
  int counter = _minimumCounterValue;

  CounterCubit() : super(InitialCounterState(counter: _minimumCounterValue));

  //to be more easily when use it ..for example just call [CounterCubit.get(context).counter]
  static CounterCubit get(BuildContext context) =>
      BlocProvider.of<CounterCubit>(context);

  bool get canDecrease => counter > _minimumCounterValue;

  void reInitialCounter() {
    counter = _minimumCounterValue;
    emit(InitialCounterState(counter: counter));
  }

  void increment() {
    ++counter;
    emit(IncrementCounterState(counter: counter));
  }

  void increaseValue(int value) {
    counter += value;
    emit(IncreaseValueCounterState(counter: counter));
  }

  void decrement() {
    if (canDecrease) {
      --counter;
      emit(DecrementCounterState(counter: counter));
    } else {
      emit(MinimumValueCounterStates(counter: counter));
    }
  }

  void decreaseValue(int value) {
    if (counter < value) {
      counter = 0;
      emit(MinimumValueCounterStates(counter: counter));
    } else {
      counter -= value;
      emit(DecreaseValueCounterState(counter: counter));
    }
  }
}
