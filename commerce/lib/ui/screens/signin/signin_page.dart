import 'package:commerce/const/padding/padding_all.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/signin_strings.dart';
import 'package:commerce/const/strings/signup_strings.dart';
import 'package:commerce/ui/widgets/appbar_back_button.dart';
import 'package:commerce/ui/widgets/custom_textfield.dart';
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
              const Text(ProjectSignInStrings.welcome),
              _signInTexts(ProjectSignInStrings.description),
              const CustomTextField(
                  title: ProjectSignUpStrings.email,
                  hintText: ProjectSignUpStrings.hintText1,
                  imagePath: IconPaths.icMail),
              const CustomTextField(
                  title: ProjectSignUpStrings.password,
                  hintText: ProjectSignUpStrings.hintText2,
                  imagePath: IconPaths.icLock),
              CheckboxListTile(
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
              )
            ],
          ),
        ),
      ),
    );
  }

  Text _signInTexts(String text) => Text(text);

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
