import 'package:flutter/cupertino.dart';

class HeaderTextBold extends StatelessWidget {
  final String text;

  const HeaderTextBold({
    super.key,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontFamily: "Roboto-Bold"
      ),
    );
  }
}
