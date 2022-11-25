import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
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
      appBar: AppBar(
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
            padding: ProjectPaddingSymmetric.paddingHor8,
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
      ),
      body: ListView(),
    );
  }
}
