import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgImage extends StatelessWidget {
  const CustomSvgImage({
    Key? key,
    required this.imageName,
    required this.onPress,
    required this.color,
  }) : super(key: key);
  final String imageName;
  final Function()? onPress;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SvgPicture.asset(
        imageName,
        color: color,
      ),
    );
  }
}
