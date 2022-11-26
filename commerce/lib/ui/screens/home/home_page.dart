import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/home_strings.dart';
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
      body: ListView(
        children: [
          Padding(
            padding: ProjectPaddingSymmetric.paddingHor20,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: ProjectBorder.borderRadius20,
                gradient: LinearGradient(colors: [Colors.blue, Color(0xFF4A3298)]),
              ),
              child: Padding(
                padding: ProjectPaddingSymmetric.paddingHor20,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _sizedBox25(),
                    const Text(ProjectHomeStrings.cardTitle, style: TextStyle(color: Colors.white)),
                    _sizedBox10(),
                    const Text(
                      ProjectHomeStrings.cashBack,
                      style: TextStyle(color: Colors.white, fontSize: 32),
                    ),
                    _sizedBox25()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  SizedBox _sizedBox25() {
    return const SizedBox(
      height: 25,
    );
  }

  SizedBox _sizedBox10() {
    return const SizedBox(
      height: 10,
    );
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
