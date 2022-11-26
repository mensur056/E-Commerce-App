import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/border/border_radius.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.imagePath,
  }) : super(key: key);
  final String title;
  final String hintText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
        contentPadding: const EdgeInsets.only(left: 32, top: 20, bottom: 20),
        suffixIcon: SvgPicture.asset(imagePath, fit: BoxFit.none),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const OutlineInputBorder(
          borderRadius: ProjectBorder.borderRadius40,
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: ProjectBorder.borderRadius40,
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        hintText: hintText,
        labelText: title,
        alignLabelWithHint: true,
      ),
    );
  }
}
