import 'package:commerce/const/padding/padding_all.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/signin_strings.dart';
import 'package:commerce/const/strings/signup_strings.dart';
import 'package:commerce/ui/widgets/appbar_back_button.dart';
import 'package:commerce/ui/widgets/continue_button.dart';
import 'package:commerce/ui/widgets/custom_textfield.dart';
import 'package:commerce/ui/widgets/social_media_avatar.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ChangeCheckBoxValue<SignInPage> {
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
                ProjectSignInStrings.welcome,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
              ),
              _sizedBox30(),
              _signInTexts(ProjectSignInStrings.description),
              _sizedBox60(),
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
              _checkBoxListTile(),
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
                  ),
                ],
              ),
              _sizedBox30(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _signInTexts(ProjectSignInStrings.subtitle),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        ProjectSignInStrings.signUp,
                        style: TextStyle(color: Color(0xFFFF7643)),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

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

  CheckboxListTile _checkBoxListTile() {
    return CheckboxListTile(
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            ProjectSignInStrings.remember,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
          Text(
            style: TextStyle(decoration: TextDecoration.underline, color: Colors.grey, fontSize: 14),
            ProjectSignInStrings.forget,
          ),
        ],
      ),
      value: isCheck ? true : false,
      onChanged: (value) {
        changeValue();
      },
    );
  }

  Text _signInTexts(String text) => Text(
        text,
        style: TextStyle(color: Colors.grey.shade600),
        textAlign: TextAlign.center,
      );

  AppBar _appBar() {
    return AppBar(
      leading: AppBarBackButton(onPress: () {}),
      title: const Text(ProjectSignInStrings.signIn),
    );
  }
}

abstract class ChangeCheckBoxValue<T extends StatefulWidget> extends State<T> {
  bool isCheck = false;
  void changeValue() {
    setState(() {
      isCheck = !isCheck;
    });
  }
}
