import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
part 'my_navi_event.dart';
part 'my_navi_state.dart';

class Daraxt {
  int daraxtYoshi;
  Daraxt(this.daraxtYoshi) {
    print(daraxtYoshi);
  }
}

class OlmaDaraxt extends Daraxt {
  OlmaDaraxt() : super(1);

}

class MyNaviBloc extends Bloc<MyNaviEvent, MyNaviState> {
  MyNaviBloc() : super(InitialState()) {
    on<ActivIndex>((event, emit) {
        emit(OkayBottom(event.activ));
      
    });
    on<InitialEvent>((event, emit) {
        emit(OkayBottom(1));
      });
  }
}
