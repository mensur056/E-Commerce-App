import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/padding/padding_all.dart';
import 'package:commerce/const/paths/icon_paths.dart';
import 'package:commerce/const/strings/singup_strings.dart';
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
        child: Column(
          children: [
            const Text(ProjectSignUpStrings.register),
            const Text(ProjectSignUpStrings.description),
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
          ],
        ),
      ),
    );
  }

  SizedBox _sizedBox30() {
    return const SizedBox(
      height: 30,
    );
  }

  AppBar _appBar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
      title: const Text(ProjectSignUpStrings.signUp),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.title,
    required this.hintText,
    required this.imagePath,
  }) : super(key: key);
  final String title;
  final String hintText;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 32, top: 20, bottom: 20),
        suffixIcon: SvgPicture.asset(imagePath, fit: BoxFit.none),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        enabledBorder: const OutlineInputBorder(
          borderRadius: ProjectBorder.borderRadius40,
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: ProjectBorder.borderRadius40,
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        hintText: hintText,
        labelText: title,
        alignLabelWithHint: true,
      ),
    );
  }
}
