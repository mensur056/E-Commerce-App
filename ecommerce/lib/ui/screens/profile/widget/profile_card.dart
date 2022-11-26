import 'package:ecommerce/const/border/border_radius.dart';
import 'package:ecommerce/const/padding/padding_all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
    required this.title,
    required this.onPress,
    required this.imagePath,
  }) : super(key: key);
  final String imagePath;
  final String title;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: ProjectBorder.borderRadius16),
      color: Colors.blue.shade50,
      child: Padding(
        padding: ProjectPaddingAll.paddingAll8,
        child: ListTile(
          onTap: onPress,
          title: Text(
            title,
            style: TextStyle(color: Colors.grey.shade600),
          ),
          leading: SvgPicture.asset(imagePath, color: Colors.red),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ),
      ),
    );
  }
}
