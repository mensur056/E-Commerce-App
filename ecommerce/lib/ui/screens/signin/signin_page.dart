import 'package:ecommerce/const/padding/padding_all.dart';
import 'package:ecommerce/const/paths/icon_paths.dart';
import 'package:ecommerce/const/strings/signin_strings.dart';
import 'package:ecommerce/const/strings/signup_strings.dart';
import 'package:ecommerce/ui/screens/signup/signup_page.dart';
import 'package:ecommerce/ui/widgets/abstract_class.dart';
import 'package:ecommerce/ui/widgets/appbar_back_button.dart';
import 'package:ecommerce/ui/widgets/continue_button.dart';
import 'package:ecommerce/ui/widgets/custom_textfield.dart';
import 'package:ecommerce/ui/widgets/social_media_avatar.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends ProjectLoading<SignInPage> with ProjectSignInStrings, ProjectSignUpStrings {
  @override
  void initState() {
    super.initState();
    changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: isLoading
          ? Padding(
              padding: ProjectPaddingAll.paddingAll20 * 2,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      welcome,
                      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                    ),
                    _sizedBox30(),
                    _signInTexts(description),
                    _sizedBox60(),
                    CustomTextField(title: email, hintText: hintText1, imagePath: IconPaths.icMail),
                    _sizedBox30(),
                    CustomTextField(title: password, hintText: hintText2, imagePath: IconPaths.icLock),
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
                        _signInTexts(subtitle),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const SignUpPage(),
                            ));
                          },
                          child: Text(
                            signUp,
                            style: const TextStyle(color: Color(0xFFFF7643)),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          : const Center(child: CircularProgressIndicator()),
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

  Widget _checkBoxListTile() {
    return Row(
      children: [
        Checkbox(
            value: isCheck ? true : false,
            onChanged: (value) {
              changeCheck();
            }),
        Text(
          remember,
          style: const TextStyle(color: Colors.grey, fontSize: 14),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            style: const TextStyle(decoration: TextDecoration.underline, color: Colors.grey, fontSize: 14),
            forget,
          ),
        ),
      ],
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
      title: Text(signIn),
    );
  }
}
