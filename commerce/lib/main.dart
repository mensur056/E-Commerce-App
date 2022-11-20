import 'package:commerce/const/theme/theme.dart';
import 'package:commerce/ui/screens/profile/profile_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  final String title = 'E-Commerce';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ProjectTheme().lightTheme,
      home: const ProfilePage(),
    );
  }
}
