import 'package:couterApp/events/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;
  Stream<int> mapEventToState(CounterEvent event) async* {
    // print(state);
    switch(event) {
      case CounterEvent.increment:
        var newState =  state + 1;
        yield newState;
        // print(newState);
        break;
      case CounterEvent.decrement:
        var newState =  state - 1;
        yield newState;
        // print(newState);
        break;

    }
  }
}
