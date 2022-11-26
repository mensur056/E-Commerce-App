import 'package:ecommerce/const/paths/icon_paths.dart';
import 'package:ecommerce/const/paths/image_paths.dart';
import 'package:ecommerce/ui/screens/home/widget/popular_card_section.dart';
import 'package:ecommerce/ui/screens/home/widget/special_card_section.dart';
import 'package:ecommerce/ui/widgets/custom_bottom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../const/border/border_radius.dart';
import '../../../const/padding/padding_symmetric.dart';
import '../../../const/strings/home_strings.dart';
import 'widget/category_section.dart';
import 'widget/home_header.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with ProjectHomeStrings, ImagePaths {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor20,
        child: ListView(
          children: [
            _sizedBox25(),
            HomeHeaderCard(),
            _sizedBox25(),
            CategorySection(),
            _sizedBox25(),
            InfoTextSection(),
            _sizedBox25(),
            SpecialCardSection(),
            _sizedBox25(),
            InfoTextSection2(),
            _sizedBox25(),
            PopularCardSection()
          ],
        ),
      ),
      bottomNavigationBar: const CustomBottomAppBar(),
    );
  }

  SizedBox _sizedBox25() {
    return const SizedBox(height: 25);
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
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: SvgPicture.asset(IconPaths.icSearch, fit: BoxFit.none),
          enabledBorder: const OutlineInputBorder(
              borderRadius: ProjectBorder.borderRadius16, borderSide: BorderSide(color: Colors.transparent)),
        ),
      ),
      actions: const [
        Padding(
          padding: ProjectPaddingSymmetric.paddingHor8,
          child: AppBarIcon(iconName: IconPaths.icBasket),
        ),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: AppBarIcon(
            iconName: IconPaths.icNotification,
          ),
        )
      ],
    );
  }
}

// ignore: must_be_immutable
class InfoTextSection extends StatelessWidget with ProjectHomeStrings {
  InfoTextSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _infoTexts(special, const TextStyle(fontSize: 20)),
        TextButton(onPressed: () {}, child: _infoTexts(seeMore, const TextStyle(color: Colors.grey)))
      ],
    );
  }

  Text _infoTexts(String title, TextStyle style) => Text(
        title,
        style: style,
      );
}

// ignore: must_be_immutable
class InfoTextSection2 extends StatelessWidget with ProjectHomeStrings {
  InfoTextSection2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _infoTexts(popular, const TextStyle(fontSize: 20)),
        TextButton(onPressed: () {}, child: _infoTexts(seeMore, const TextStyle(color: Colors.grey)))
      ],
    );
  }

  Text _infoTexts(String title, TextStyle style) => Text(
        title,
        style: style,
      );
}

class AppBarIcon extends StatelessWidget {
  const AppBarIcon({
    Key? key,
    required this.iconName,
  }) : super(key: key);
  final String iconName;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: CircleAvatar(
        radius: 24,
        backgroundColor: Colors.grey.shade200,
        child: ClipOval(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SvgPicture.asset(iconName, fit: BoxFit.none),
          ),
        ),
      ),
    );
  }
}
