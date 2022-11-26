import 'package:flutter/material.dart';

import 'const/theme/theme.dart';
import 'ui/screens/home/home_page.dart';

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
      home: const HomePage(),
    );
  }
}
