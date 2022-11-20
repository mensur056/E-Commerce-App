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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
        ],
      ),
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor20,
        child: ListView(
          children: [
            _sizedBox30(),
            const CircleAvatar(
              backgroundImage: AssetImage(
                ImagePaths.profilePath,
              ),
            ),
            _sizedBox30(),
            const _ProfileCard(),
            _sizedBox15(),
            const _ProfileCard(),
            _sizedBox15(),
            const _ProfileCard(),
            _sizedBox15(),
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox30() {
    return const SizedBox(
      height: 30,
    );
  }

  SizedBox _sizedBox15() {
    return const SizedBox(
      height: 15,
    );
  }

  AppBar _appBar() {
    return AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left_outlined),
        ),
        title: const Text(ProjectProfileStrings.profile));
  }
}

class _ProfileCard extends StatelessWidget {
  const _ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const RoundedRectangleBorder(borderRadius: ProjectBorder.borderRadius12),
      color: Colors.blue.shade100,
      child: Padding(
        padding: ProjectPaddingAll.paddingAll16,
        child: ListTile(
          leading: SvgPicture.asset(IconPaths.icHelp),
          trailing: const Icon(Icons.chevron_right_outlined),
        ),
      ),
    );
  }
}
