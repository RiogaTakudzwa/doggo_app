import 'package:doggo_app/shared/widgets/nav_bar/widgets/navigation_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../services/navigation/Bloc/navigation_bloc.dart';
import '../../../utils/colour_scheme/colour_scheme.dart';
import '../../../utils/widget_parameters/widget_parameters.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key,});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return NavigationBarTheme(
          data: const NavigationBarThemeData(
            backgroundColor: Colors.white70
          ),
          child: Container(
            height: WidgetParameters().bottomNavigationBarHeight,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(WidgetParameters().standardBorderRadius),
                topRight: Radius.circular(WidgetParameters().standardBorderRadius)
              )
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(WidgetParameters().standardBorderRadius),
                topRight: Radius.circular(WidgetParameters().standardBorderRadius)
              ),
              child: Row(
                children: [
                  // Home Icon
                  NavigationIcon(
                    function: ()=> BlocProvider.of<NavigationBloc>(context).add(UpdateNavigationIndexEvent(index: 0)),
                    size: 20,
                    text: "Home",
                    widgetColour: state.currentScreenIndex == 0 ?
                      ColourScheme.navigationIconActiveColour :
                      ColourScheme.navigationIconDeselectedColour,
                    widgetIcon: const Icon(Icons.home_filled),
                  ),

                  // Home Icon
                  NavigationIcon(
                    function: ()=> BlocProvider.of<NavigationBloc>(context).add(UpdateNavigationIndexEvent(index: 1)),
                    size: 20,
                    text: "Home",
                    widgetColour: state.currentScreenIndex == 0 ?
                      ColourScheme.navigationIconActiveColour :
                      ColourScheme.navigationIconDeselectedColour,
                    widgetIcon: const Icon(Icons.favorite_outline_rounded),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
