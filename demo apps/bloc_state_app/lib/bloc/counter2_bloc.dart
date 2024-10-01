import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'counter2_event.dart';
part 'counter2_state.dart';
part 'counter2_bloc.freezed.dart';

class Counter2Bloc extends Bloc<Counter2Event, Counter2State> {
  Counter2Bloc() : super(_Initial()) {
    on<Counter2Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
