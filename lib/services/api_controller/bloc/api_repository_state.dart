part of 'api_repository_bloc.dart';

class ApiRepositoryState extends Equatable{
  final List<DogBreed> breeds;

  @override
  List<Object> get props => [];

}

final class ApiRepositoryInitial extends ApiRepositoryState {}
