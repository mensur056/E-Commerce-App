import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/profile_strings.dart';
import 'package:commerce/ui/screens/profile/widget/profile_card.dart';
import 'package:commerce/ui/widgets/custom_bottom_appbar.dart';
import 'package:flutter/material.dart';

import 'widget/custom_circle_avatar.dart';

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
            const CustomCircleAvatar(),
            _sizedBox36(),
            ProfileCard(imagePath: IconPaths.icProfile, onPress: () {}, title: ProjectProfileStrings.account),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icNotification, onPress: () {}, title: ProjectProfileStrings.notification),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icSettings, onPress: () {}, title: ProjectProfileStrings.settings),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icHelp, onPress: () {}, title: ProjectProfileStrings.help),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icLogout, onPress: () {}, title: ProjectProfileStrings.logout),
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
