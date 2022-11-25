import 'dart:async';

import 'package:flutter/widgets.dart';

abstract class ProjectLoading<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        isLoading = !isLoading;
      });
    });
  }

  bool isCheck = false;
  void changeCheck() {
    Timer(const Duration(seconds: 2), () {
      setState(() {
        isCheck = !isCheck;
      });
    });
  }
}
