import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';

class MyButton extends StatefulWidget {
  var text, weight,textColor,btnBgColor,radius;
  double? textSize, height,elevation;
  VoidCallback? onPressed;

  MyButton({
    this.text,
    this.textSize = 14,
    this.textColor = KBlackColor,
    this.btnBgColor = KSecondaryColor,
    this.height = 50,
    this.elevation = 0,
    this.radius = 8.0,
    this.weight = FontWeight.w700,
    this.onPressed,
  });

  @override
  _MyButtonState createState() => _MyButtonState();
}

class _MyButtonState extends State<MyButton> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: widget.elevation,
      highlightElevation: widget.elevation,
      onPressed: widget.onPressed,
      color: widget.btnBgColor,
      height: widget.height,
      shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius),
            ),
      child: Text(
        '${widget.text}',
        style: TextStyle(
          fontSize: widget.textSize,
          color: widget.textColor,
          fontWeight: widget.weight,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
