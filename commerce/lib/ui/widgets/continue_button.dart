import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/colors/button_colors.dart';
import 'package:commerce/const/strings/onboarding_strings.dart';
import 'package:flutter/material.dart';

class ContinueButton extends StatelessWidget {
  const ContinueButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor.continueButton,
          shape: const RoundedRectangleBorder(borderRadius: ProjectBorder.borderRadius28)),
      onPressed: onPress,
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 0.75,
        child: Center(
          child: Text(
            ProjectOnboardingStrings.continueButton,
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
