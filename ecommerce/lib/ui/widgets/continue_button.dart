import 'package:flutter/material.dart';
import '../../const/border/border_radius.dart';
import '../../const/colors/button_colors.dart';
import '../../const/strings/onboarding_strings.dart';

class ContinueButton extends StatelessWidget with ProjectOnboardingStrings {
  ContinueButton({
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
            continueButton,
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
