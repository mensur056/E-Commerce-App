import 'package:flutter/material.dart';

class AppBarBackButton extends StatelessWidget {
  const AppBarBackButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onPress, icon: const Icon(Icons.arrow_back_ios_new_outlined));
  }
}
