// import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterInitial()) {
    on<Increment>((event, emit) {
      final c= state.count;
      final nc=c+1;
      print("increment${nc}");
      return emit(CounterState(count:nc));
    });
    on<Decrement>((event, emit) {
      final ss=state.count;
      final sss=ss-1;
      print("increment${sss}");
      return emit(CounterState(count: sss));
    });
  }
}