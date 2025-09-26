import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

// ignore: must_be_immutable
class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    this.hintText,
    this.onChanged,
    this.obscureText = false,
    this.inputType
  });
  String? hintText;
  bool? obscureText;
  TextInputType? inputType;
  Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      obscureText: obscureText!,
      keyboardType: inputType,
     
      onChanged: onChanged,
      decoration: InputDecoration(
        hintStyle: TextStyle(color:kPrimaryColor),
        hintText: hintText,
        border: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        enabledBorder: buildBorder(),
      ),
    );
  }

  // ignore: strict_top_level_inference
  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
        borderSide:  BorderSide(color:color ?? Colors.white),
        borderRadius: BorderRadius.circular(8),
      );
  }
}
