part of 'my_navi_bloc.dart';

@immutable
abstract class MyNaviState {}

class InitialState extends MyNaviState {}

class OkayBottom extends MyNaviState {
  int okayIndex;
  OkayBottom(this.okayIndex);
}
