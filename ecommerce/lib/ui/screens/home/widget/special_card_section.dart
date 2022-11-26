// ignore: must_be_immutable
import 'package:ecommerce/const/border/border_radius.dart';
import 'package:ecommerce/const/colors/button_colors.dart';
import 'package:ecommerce/const/padding/padding_all.dart';
import 'package:ecommerce/const/paths/image_paths.dart';
import 'package:ecommerce/const/strings/home_strings.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SpecialCardSection extends StatelessWidget with ImagePaths, ProjectHomeStrings {
  SpecialCardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SpecialCard(imageName: imSpecial1, title: smart, subtitle: brand, onPress: () {}),
          const SizedBox(
            width: 20,
          ),
          SpecialCard(imageName: imSpecial2, title: fashion, subtitle: brand24, onPress: () {}),
        ],
      ),
    );
  }
}

class SpecialCard extends StatelessWidget {
  const SpecialCard({
    Key? key,
    required this.imageName,
    required this.title,
    required this.subtitle,
    required this.onPress,
  }) : super(key: key);

  final String imageName;
  final String title;
  final String subtitle;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.15,
        child: ClipRRect(
          borderRadius: ProjectBorder.borderRadius16,
          child: Stack(children: [
            Image.asset(imageName),
            Padding(
              padding: ProjectPaddingAll.paddingAll20,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style:
                        const TextStyle(color: ButtonColor.continueButton, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    subtitle,
                    style: const TextStyle(color: ButtonColor.continueButton),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
