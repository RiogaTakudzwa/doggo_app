import 'dart:io';

import 'package:doggo_app/services/hive_db/box_names/box_names.dart';
import 'package:doggo_app/services/navigation/Bloc/navigation_bloc.dart';
import 'package:doggo_app/shared/screens/splash/splash_screen.dart';
import 'package:doggo_app/utils/colour_scheme/general_colour_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

final messengerKey = GlobalKey<ScaffoldMessengerState>();

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  var path = Directory.current.path;
  Hive.init(path);

  await Hive.openBox(BoxNames().defaultBreedImagesBox);
  await Hive.openBox(BoxNames().favouriteDogImagesBox);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
    providers:[
      BlocProvider<NavigationBloc>(create: (context) => NavigationBloc()),
    ],
    child: MaterialApp(
        scaffoldMessengerKey: messengerKey,
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColourScheme.navigationIconActiveColour),
          useMaterial3: true,
        ),
        home: const SplashScreen(), // Send user to splash
      ),
    );
  }
}
