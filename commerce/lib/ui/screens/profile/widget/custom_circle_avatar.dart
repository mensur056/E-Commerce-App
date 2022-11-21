import 'dart:io';

import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/paths/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image_picker/image_picker.dart';

class CustomCircleAvatar extends StatefulWidget {
  const CustomCircleAvatar({
    Key? key,
  }) : super(key: key);

  @override
  State<CustomCircleAvatar> createState() => _CustomCircleAvatarState();
}

class _CustomCircleAvatarState extends State<CustomCircleAvatar> {
  File? imageFile;

  void getFromGallery() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      setState(() {
        imageFile = File(image.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: const Alignment(0, 1),
      children: [
        imageFile == null
            ? CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.2,
                backgroundColor: Colors.transparent,
                child: SizedBox(
                  child: ClipOval(
                    child: Image.asset(
                      ImagePaths.profilePath,
                    ),
                  ),
                ),
              )
            : CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.2,
                backgroundColor: Colors.transparent,
                backgroundImage: FileImage(imageFile ?? File(ImagePaths.profilePath)),
              ),
        Positioned(
          right: 100,
          child: InkWell(
            onTap: () {
              getFromGallery();
            },
            child: CircleAvatar(
              radius: MediaQuery.of(context).size.width * 0.06,
              backgroundColor: Colors.grey.shade200,
              child: SizedBox(
                child: ClipOval(
                  child: SvgPicture.asset(
                    IconPaths.icCamera,
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
