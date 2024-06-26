import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'navigation_event.dart';
part 'navigation_state.dart';

class NavigationBloc extends Bloc<NavigationEvent, NavigationState> {
  NavigationBloc() : super(const NavigationState(
      currentScreenIndex: 0
  )) {
    on<UpdateNavigationIndexEvent>(_onUpdateScreenIndex);
  }

  _onUpdateScreenIndex(event, emit) {
    emit(UpdateNavigationIndexState(
        event.index
    ));
  }
}
