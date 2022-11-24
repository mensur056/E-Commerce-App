import 'package:commerce/const/padding/padding_all.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/signup_strings.dart';
import 'package:commerce/ui/widgets/appbar_back_button.dart';
import 'package:commerce/ui/widgets/continue_button.dart';
import 'package:commerce/ui/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
                  SignUpSocialMedia(
                    iconPath: IconPaths.icGoogle,
                    onPress: () {},
                  ),
                  SignUpSocialMedia(
                    iconPath: IconPaths.icFacebook,
                    onPress: () {},
                  ),
                  SignUpSocialMedia(
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
      leading: AppBarBackButton(onPress: () {}),
      title: const Text(ProjectSignUpStrings.signUp),
    );
  }
}

class SignUpSocialMedia extends StatelessWidget {
  const SignUpSocialMedia({
    Key? key,
    required this.iconPath,
    required this.onPress,
  }) : super(key: key);
  final String iconPath;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddingSymmetric.paddingHor8,
      child: InkWell(
        onTap: onPress,
        child: CircleAvatar(
          backgroundColor: Colors.grey.shade200,
          child: ClipOval(
            child: SvgPicture.asset(iconPath),
          ),
        ),
      ),
    );
  }
}
