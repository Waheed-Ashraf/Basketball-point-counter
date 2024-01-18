part of 'counter_cubit.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

final class TeamACounter extends CounterState {}

final class TeamBCounter extends CounterState {}

final class ResettingScore extends CounterState {
  final int countA;
  final int countB;

  ResettingScore({required this.countA, required this.countB});
}
