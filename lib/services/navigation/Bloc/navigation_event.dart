part of 'navigation_bloc.dart';

class NavigationEvent {}

class UpdateNavigationIndexEvent extends NavigationEvent{
  final int index;
  UpdateNavigationIndexEvent({required this.index});
}