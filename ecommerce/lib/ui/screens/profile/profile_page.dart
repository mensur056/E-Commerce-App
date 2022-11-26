import 'package:ecommerce/const/padding/padding_symmetric.dart';
import 'package:ecommerce/const/paths/icon_paths.dart';
import 'package:ecommerce/const/strings/profile_strings.dart';
import 'package:ecommerce/ui/screens/profile/widget/profile_card.dart';
import 'package:ecommerce/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce/ui/widgets/custom_bottom_appbar.dart';
import 'package:flutter/material.dart';

import 'widget/custom_circle_avatar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> with ProjectProfileStrings {
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
            ProfileCard(imagePath: IconPaths.icProfile, onPress: () {}, title: account),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icNotification, onPress: () {}, title: notification),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icSettings, onPress: () {}, title: settings),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icHelp, onPress: () {}, title: help),
            _sizedBox16(),
            ProfileCard(imagePath: IconPaths.icLogout, onPress: () {}, title: logout),
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
      leading: AppBarBackButton(onPress: () {}),
      title: Text(
        profile,
      ),
    );
  }
}
