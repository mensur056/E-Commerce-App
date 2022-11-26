// ignore: must_be_immutable
import 'package:ecommerce/const/border/border_radius.dart';
import 'package:ecommerce/const/paths/image_paths.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularCardSection extends StatelessWidget with ImagePaths {
  PopularCardSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.21,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          PopularCard(imageName: imProduct1),
          _sizedBox20(),
          PopularCard(imageName: imProduct2),
          _sizedBox20(),
          PopularCard(imageName: imProduct3),
        ],
      ),
    );
  }

  SizedBox _sizedBox20() {
    return const SizedBox(
      width: 20,
    );
  }
}

class PopularCard extends StatelessWidget {
  const PopularCard({
    Key? key,
    required this.imageName,
    this.onPress,
  }) : super(key: key);

  final String imageName;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: ProjectBorder.borderRadius16,
          color: Colors.grey.shade300,
        ),
        height: MediaQuery.of(context).size.height * 0.180,
        width: MediaQuery.of(context).size.height * 0.180,
        child: Image.asset(imageName),
      ),
    );
  }
}
