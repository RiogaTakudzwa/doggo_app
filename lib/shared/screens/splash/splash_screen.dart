import 'package:flutter/material.dart';

import '../../../screens/screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin{

  @override
  void initState() {
    super.initState();

    // get dog breeds
    // then get dog breed images
    // then get max random images

    Future.delayed(const Duration(seconds: 5), (){
      // Navigate to Screen Controller 
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => const ScreenController()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/splash/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/splash/doggo.png',
            width: 600.0,
            height: 240.0,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
