import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../const/padding/padding_symmetric.dart';

class SocialMediaAvatar extends StatelessWidget {
  const SocialMediaAvatar({
    Key? key,
    required this.iconPath,
    required this.onPress,
  }) : super(key: key);
  final String iconPath;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddingSymmetric.paddingHor8,
      child: InkWell(
        onTap: onPress,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: ClipOval(
            child: SvgPicture.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
