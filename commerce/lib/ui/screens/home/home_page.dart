import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/home_strings.dart';
import 'package:commerce/ui/screens/home/widget/category_icon.dart';
import 'package:commerce/ui/screens/home/widget/home_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor20,
        child: ListView(
          children: [
            _sizedBox25(),
            const HomeHeaderCard(),
            _sizedBox25(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                CategoryIcon(
                  iconName: IconPaths.icFlash,
                  title: ProjectHomeStrings.flash,
                ),
                CategoryIcon(iconName: IconPaths.icBill, title: ProjectHomeStrings.bill),
                CategoryIcon(iconName: IconPaths.icGame, title: ProjectHomeStrings.game),
                CategoryIcon(iconName: IconPaths.icGift, title: ProjectHomeStrings.gift),
                CategoryIcon(iconName: IconPaths.icDiscover, title: ProjectHomeStrings.more),
              ],
            )
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox25() {
    return const SizedBox(height: 25);
  }

  SizedBox _sizedBox10() {
    return const SizedBox(height: 10);
  }

  AppBar _appBar() {
    return AppBar(
      toolbarHeight: 70,
      title: TextField(
        decoration: InputDecoration(
          contentPadding: EdgeInsets.zero,
          filled: true,
          fillColor: Colors.grey.shade200,
          focusColor: Colors.grey,
          hintText: 'Search product',
          prefixIcon: SvgPicture.asset(IconPaths.icSearch, fit: BoxFit.none),
          enabledBorder: const OutlineInputBorder(
              borderRadius: ProjectBorder.borderRadius16, borderSide: BorderSide(color: Colors.transparent)),
        ),
      ),
      actions: [
        Padding(
          padding: ProjectPaddingSymmetric.paddingHor8,
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: SvgPicture.asset(IconPaths.icBasket),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: SvgPicture.asset(IconPaths.icNotification),
              ),
            ),
          ),
        )
      ],
    );
  }
}
