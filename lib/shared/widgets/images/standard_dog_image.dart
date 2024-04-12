import 'dart:typed_data';

import 'package:flutter/cupertino.dart';

import '../../../utils/widget_parameters/widget_parameters.dart';

class StandardDogImage extends StatefulWidget {
  final Uint8List image;

  const StandardDogImage({
    super.key,
    required this.image
  });

  @override
  State<StandardDogImage> createState() => _StandardDogImageState();
}

class _StandardDogImageState extends State<StandardDogImage> {

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return ClipRRect(
      borderRadius: BorderRadius.circular(WidgetParameters().standardBorderRadius),
      child: Image.memory(
        widget.image,
        height: screenWidth * 0.2,
        width: screenWidth * 0.2,
      ),
    );
  }
}
