import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CategoryIcon extends StatelessWidget {
  const CategoryIcon({
    Key? key,
    required this.iconName,
    required this.title,
  }) : super(key: key);
  final String iconName;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            borderRadius: ProjectBorder.borderRadius12,
            color: Color(0xFFFFECDF),
          ),
          child: Padding(
            padding: ProjectPaddingAll.paddingAll16,
            child: SvgPicture.asset(iconName),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            title,
            style: const TextStyle(color: Colors.grey),
          ),
        )
      ],
    );
  }
}
