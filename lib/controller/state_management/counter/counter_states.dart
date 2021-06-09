abstract class CounterStates {
  int counter;

  CounterStates({required this.counter});
}

class InitialCounterState extends CounterStates {
  InitialCounterState({required int counter}) : super(counter: counter);
}

class IncrementCounterState extends CounterStates {
  IncrementCounterState({required int counter}) : super(counter: counter);
}

class IncreaseValueCounterState extends CounterStates {
  IncreaseValueCounterState({required int counter}) : super(counter: counter);
}

class DecrementCounterState extends CounterStates {
  DecrementCounterState({required int counter}) : super(counter: counter);
}

class DecreaseValueCounterState extends CounterStates {
  DecreaseValueCounterState({required int counter}) : super(counter: counter);
}

class MinimumValueCounterStates extends CounterStates {
  MinimumValueCounterStates({required int counter}) : super(counter: counter);
}
