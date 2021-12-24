import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';

class MyText extends StatelessWidget {
  var text, color, weight, align, decoration, fontFamily;
  double? size;
  var maxlines, overFlow;

  MyText({
    Key? key,
    this.text,
    this.size,
    this.maxlines = 100,
    this.decoration = TextDecoration.none,
    this.color = KSecondaryColor,
    this.weight = FontWeight.w400,
    this.align,
    this.overFlow,
    this.fontFamily = 'Noto Sans',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$text",
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: weight,
        decoration: decoration,
        fontFamily: '$fontFamily',
      ),
      textAlign: align,
      maxLines: maxlines,
      overflow: overFlow,
    );
  }
}

Widget heading(String heading) => Text(
      heading,
      style: const TextStyle(
        fontSize: 32,
        color: KSecondaryColor,
        fontWeight: FontWeight.bold,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );

Widget heading16(String heading) => Text(
  heading,
  style: const TextStyle(
    fontSize: 16,
    color: KSecondaryColor,
    fontWeight: FontWeight.bold,
  ),
  maxLines: 1,
  overflow: TextOverflow.ellipsis,
);