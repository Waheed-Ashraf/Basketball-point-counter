import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int counterA = 0;
  int counterB = 0;
  void increamentCounter({required String team, required int numberOfPoints}) {
    if (team == 'A') {
      counterA += numberOfPoints;
      emit(TeamACounter());
    } else {
      counterB += numberOfPoints;
      emit(TeamBCounter());
    }
  }

  void resetting() {
    counterA = 0;
    counterB = 0;
    emit(ResettingScore(countA: counterA, countB: counterB));
  }
}
