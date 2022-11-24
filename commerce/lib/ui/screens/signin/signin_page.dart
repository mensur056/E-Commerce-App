import 'package:commerce/const/strings/signin_strings.dart';
import 'package:commerce/ui/widgets/appbar_back_button.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          const Text(ProjectSignInStrings.welcome),
          _signInTexts(ProjectSignInStrings.description),
        ],
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
