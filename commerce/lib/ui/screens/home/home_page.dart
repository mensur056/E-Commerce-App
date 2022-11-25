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
        leading: TextField(
          decoration: InputDecoration(
            fillColor: Colors.grey,
            focusColor: Colors.grey,
            hintText: 'Search product',
            prefixIcon: SvgPicture.asset(IconPaths.icSearch),
            border: const OutlineInputBorder(),
          ),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: SvgPicture.asset(IconPaths.icBasket),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: CircleAvatar(
              backgroundColor: Colors.grey.shade200,
              child: ClipOval(
                child: SvgPicture.asset(IconPaths.icNotification),
              ),
            ),
          )
        ],
      ),
      body: ListView(),
    );
  }
}
