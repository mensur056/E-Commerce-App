import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../const/border/border_radius.dart';
import '../../../../const/padding/padding_all.dart';
import '../../../../const/paths/icon_paths.dart';
import '../../../../const/strings/home_strings.dart';

class CategorySection extends StatelessWidget with ProjectHomeStrings {
  CategorySection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CategoryIcon(
          iconName: IconPaths.icFlash,
          title: flash,
        ),
        CategoryIcon(iconName: IconPaths.icBill, title: bill),
        CategoryIcon(iconName: IconPaths.icGame, title: game),
        CategoryIcon(iconName: IconPaths.icGift, title: gift),
        CategoryIcon(iconName: IconPaths.icDiscover, title: more),
      ],
    );
  }
}

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
            child: SvgPicture.asset(iconName, fit: BoxFit.none),
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
