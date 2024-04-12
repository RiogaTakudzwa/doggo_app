import 'package:doggo_app/main.dart';
import 'package:flutter/material.dart';

import '../../../utils/colour_scheme/snackbar_colour_scheme.dart';

class CustomSnackBar{

  static showSuccessSnackBar(String? message){
    if(message == null) return;

    final snackBar = SnackBar(
      content: Text(
        message,
        style: const TextStyle(
          color: SnackBarColourScheme.successMessageTextColour
        ),
      ),
      backgroundColor: SnackBarColourScheme.successMessageBackgroundColour,
    );

    messengerKey.currentState!
      ..removeCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}