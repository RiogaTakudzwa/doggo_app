import 'package:doggo_app/shared/widgets/nav_bar/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../services/navigation/Bloc/navigation_bloc.dart';
import '../../services/navigation/screen_index.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationBloc, NavigationState>(
      builder: (context, state) {
        return Scaffold(

          // Add app bar
          // TODO: Add app bar

          body: ScreenIndex().mobileScreenIndex[
            state.currentScreenIndex
          ],

          // Bottom navigation widget
          bottomNavigationBar: const CustomNavigationBar(),
        );
      },
    );
  }
}
