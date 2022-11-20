import 'package:commerce/const/theme/theme.dart';
import 'package:commerce/ui/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  String title = 'E-Commerce';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ProjectTheme().lightTheme,
      home: const ProfilePage(),
    );
  }
}
