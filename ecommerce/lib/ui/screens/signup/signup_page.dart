import 'package:ecommerce/const/padding/padding_all.dart';
import 'package:ecommerce/const/paths/icon_paths.dart';
import 'package:ecommerce/const/strings/signup_strings.dart';
import 'package:ecommerce/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce/ui/widgets/continue_button.dart';
import 'package:ecommerce/ui/widgets/custom_textfield.dart';
import 'package:ecommerce/ui/widgets/social_media_avatar.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Padding(
        padding: ProjectPaddingAll.paddingAll20 * 2,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text(
                ProjectSignUpStrings.register,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              _sizedBox30(),
              _signUpTexts(ProjectSignUpStrings.description),
              _sizedBox30(),
              const CustomTextField(
                  title: ProjectSignUpStrings.email,
                  hintText: ProjectSignUpStrings.hintText1,
                  imagePath: IconPaths.icMail),
              _sizedBox30(),
              const CustomTextField(
                  title: ProjectSignUpStrings.password,
                  hintText: ProjectSignUpStrings.hintText2,
                  imagePath: IconPaths.icLock),
              _sizedBox30(),
              const CustomTextField(
                  title: ProjectSignUpStrings.confirmPassword,
                  hintText: ProjectSignUpStrings.hintText3,
                  imagePath: IconPaths.icLock),
              _sizedBox30(),
              ContinueButton(onPress: () {}),
              _sizedBox60(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaAvatar(
                    iconPath: IconPaths.icGoogle,
                    onPress: () {},
                  ),
                  SocialMediaAvatar(
                    iconPath: IconPaths.icFacebook,
                    onPress: () {},
                  ),
                  SocialMediaAvatar(
                    iconPath: IconPaths.icTwitter,
                    onPress: () {},
                  )
                ],
              ),
              _sizedBox30(),
              _signUpTexts(ProjectSignUpStrings.subtitle)
            ],
          ),
        ),
      ),
    );
  }

  Text _signUpTexts(String text) => Text(
        text,
        style: TextStyle(
          color: Colors.grey.shade500,
        ),
        textAlign: TextAlign.center,
      );

  SizedBox _sizedBox30() {
    return const SizedBox(
      height: 30,
    );
  }

  SizedBox _sizedBox60() {
    return const SizedBox(
      height: 60,
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: AppBarBackButton(onPress: () {
        Navigator.of(context).pop();
      }),
      title: const Text(ProjectSignUpStrings.signUp),
    );
  }
}
