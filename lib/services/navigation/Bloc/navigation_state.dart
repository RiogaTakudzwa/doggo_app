part of 'navigation_bloc.dart';

class NavigationState extends Equatable{
  final int currentScreenIndex;

  const NavigationState({
    required this.currentScreenIndex
  });

  @override
  List<Object> get props => [currentScreenIndex];

}

final class UpdateNavigationIndexState extends NavigationState {
  const UpdateNavigationIndexState(
      int currentScreenIndex,
  ) : super (
    currentScreenIndex: currentScreenIndex
  );

  @override
  List<Object> get props => [currentScreenIndex];
}
