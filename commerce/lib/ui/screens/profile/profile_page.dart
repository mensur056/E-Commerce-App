import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_all.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/paths/image_paths.dart';
import 'package:commerce/const/strings/profile_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const CustomBottomAppBar(),
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor20,
        child: ListView(
          children: [
            _sizedBox36(),
            CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              child: SizedBox(
                child: ClipOval(
                  child: Image.asset(
                    ImagePaths.profilePath,
                  ),
                ),
              ),
            ),
            _sizedBox36(),
            _ProfileCard(imagePath: IconPaths.icProfile, onPress: () {}, title: ProjectProfileStrings.account),
            _sizedBox16(),
            _ProfileCard(
                imagePath: IconPaths.icNotification, onPress: () {}, title: ProjectProfileStrings.notification),
            _sizedBox16(),
            _ProfileCard(imagePath: IconPaths.icSettings, onPress: () {}, title: ProjectProfileStrings.settings),
            _sizedBox16(),
            _ProfileCard(imagePath: IconPaths.icHelp, onPress: () {}, title: ProjectProfileStrings.help),
            _sizedBox16(),
            _ProfileCard(imagePath: IconPaths.icLogout, onPress: () {}, title: ProjectProfileStrings.logout),
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox36() {
    return const SizedBox(
      height: 36,
    );
  }

  SizedBox _sizedBox16() {
    return const SizedBox(
      height: 16,
    );
  }

  AppBar _appBar() {
    return AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: const Text(
          ProjectProfileStrings.profile,
        ));
  }
}

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
          padding: ProjectPaddingSymmetric.paddingVer24,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _CustomSvgImage(
                imageName: IconPaths.icShop,
                onPress: () {},
              ),
              _CustomSvgImage(
                imageName: IconPaths.icFavorite,
                onPress: () {},
              ),
              _CustomSvgImage(
                imageName: IconPaths.icChat,
                onPress: () {},
              ),
              _CustomSvgImage(
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

class _CustomSvgImage extends StatelessWidget {
  const _CustomSvgImage({
    Key? key,
    required this.imageName,
    required this.onPress,
  }) : super(key: key);
  final String imageName;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: SvgPicture.asset(
        imageName,
        color: Colors.red,
      ),
    );
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({
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
          title: Text(title),
          leading: SvgPicture.asset(imagePath, color: Colors.red),
          trailing: const Icon(
            Icons.arrow_forward_ios_outlined,
          ),
        ),
      ),
    );
  }
}
