import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../shared/models/dog_breed.dart';

part 'api_repository_event.dart';
part 'api_repository_state.dart';

class ApiRepositoryBloc extends Bloc<ApiRepositoryEvent, ApiRepositoryState> {
  ApiRepositoryBloc() : super(ApiRepositoryInitial()) {
    on<ApiRepositoryEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
