part of 'my_navi_bloc.dart';

@immutable
abstract class MyNaviEvent {}
 
 
class InitialEvent extends MyNaviEvent{}

class ActivIndex extends MyNaviEvent {
  int activ;
  ActivIndex(this.activ);
}
