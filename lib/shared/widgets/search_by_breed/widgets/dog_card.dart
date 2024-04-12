import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../widgets/images/standard_dog_image.dart';
import '../../../widgets/text_widgets/header_text_bold.dart';

class DogCard extends StatefulWidget {
  final String dogBreed;
  final List<String> subBreeds;
  final Uint8List breedImage;

  const DogCard({
    super.key,
    required this.dogBreed,
    required this.subBreeds,
    required this.breedImage
  });

  @override
  State<DogCard> createState() => _DogCardState();
}

class _DogCardState extends State<DogCard> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                HeaderTextBold(text: widget.dogBreed),
              ],
            ),
            StandardDogImage(image: widget.breedImage,)
          ],
        ),
      ),
    );
  }
}
