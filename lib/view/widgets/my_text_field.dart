import 'package:flutter/material.dart';
import 'package:music_mind_app/constants/constants.dart';
import 'package:music_mind_app/view/widgets/my_text.dart';

class MyTextField extends StatefulWidget {
  var hintText, label;
  bool? obsecure;
  int? maxlines;
  TextEditingController? controller = TextEditingController();

  MyTextField({Key? key,
    this.hintText,
    this.label,
    this.maxlines = 1,
    this.obsecure = false,
    this.controller,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          heading16('${widget.label}'),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            textAlignVertical: TextAlignVertical.center,
            cursorColor: KSecondaryColor,
            maxLines: widget.maxlines,
            style: const TextStyle(
              color: KSecondaryColor,
              fontSize: 16,
            ),
            obscureText: widget.obsecure!,
            obscuringCharacter: "*",
            decoration: InputDecoration(
              hintText: '${widget.hintText}',
              hintStyle: const TextStyle(
                color: KGrey2Color,
                fontSize: 16,
              ),
              fillColor: KTertiaryColor,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: KTertiaryColor,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: KTertiaryColor,
                ),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
