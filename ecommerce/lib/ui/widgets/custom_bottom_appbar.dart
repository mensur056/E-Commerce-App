import 'package:flutter/material.dart';

import '../../const/colors/icon_colors.dart';
import '../../const/padding/padding_symmetric.dart';
import '../../const/paths/icon_paths.dart';
import '../screens/profile/widget/custom_svg_image.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topRight: Radius.circular(40),
        topLeft: Radius.circular(40),
      ),
      child: BottomAppBar(
        elevation: 0,
        child: Padding(
          padding: ProjectPaddingSymmetric.paddingVer28,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomSvgImage(
                color: IconColors.greyColor,
                imageName: IconPaths.icShop,
                onPress: () {},
              ),
              CustomSvgImage(
                color: IconColors.greyColor,
                imageName: IconPaths.icFavorite,
                onPress: () {},
              ),
              CustomSvgImage(
                color: IconColors.greyColor,
                imageName: IconPaths.icChat,
                onPress: () {},
              ),
              CustomSvgImage(
                color: IconColors.redColor,
                imageName: IconPaths.icProfile,
                onPress: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
