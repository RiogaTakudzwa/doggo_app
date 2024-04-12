import 'package:flutter/cupertino.dart';

import '../../../utils/colour_scheme/general_colour_scheme.dart';
import '../../../utils/widget_parameters/widget_parameters.dart';

class StandardFullWidthButton extends StatefulWidget {
  final String text;
  final Function function;

  const StandardFullWidthButton({
    super.key,
    required this.text,
    required this.function
  });

  @override
  State<StandardFullWidthButton> createState() => _StandardFullWidthButtonState();
}

class _StandardFullWidthButtonState extends State<StandardFullWidthButton> {
  @override
  Widget build(BuildContext context) {

    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
        onTap: () => widget.function,
        child: Container(
          width: screenWidth * WidgetParameters().fullwidthButtonWidth,
          height: screenHeight * WidgetParameters().standardButtonHeight,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(WidgetParameters().standardBorderRadius),
            color: ColourScheme.navigationIconActiveColour
          ),
          child: Text(widget.text),
        ),
      );
  }
}
