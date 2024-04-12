import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../shared/widgets/buttons/standard_full_width_button.dart';
import '../../../shared/widgets/search_by_breed/search_by_breed.dart';
import '../../../utils/colour_scheme/general_colour_scheme.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({super.key});

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Search button
          StandardFullWidthButton(
            text: "Search Dog By Breed",
            function: () {
              showModalBottomSheet(
                context: context,
                builder: (context){
                  return const SearchByBreed();
                }
              );
            }, // open search modal
          ),

          // dog list

        ],
      ),
    );
  }
}
