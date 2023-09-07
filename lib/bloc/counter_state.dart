part of 'counter_bloc.dart';

// @immutable
class CounterState {
  late int count;
  CounterState({required this.count});
}

class CounterInitial extends CounterState {
  CounterInitial():super(count: 0);
}