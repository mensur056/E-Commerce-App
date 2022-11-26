import 'package:ecommerce/const/paths/image_paths.dart';
import 'package:ecommerce/ui/screens/signin/signin_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../const/border/border_radius.dart';
import '../../../const/colors/button_colors.dart';
import '../../../const/padding/padding_symmetric.dart';
import '../../../const/strings/onboarding_strings.dart';
import 'package:ecommerce/ui/widgets/abstract_class.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends ProjectLoading<OnboardingPage> with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  int indicatorIndex = 0;

  void changeValue() {
    setState(() {
      indicatorIndex++;
      if (indicatorIndex == 3) {
        changeLoading();
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return const SignInPage();
            },
          ),
        );
      } else {
        _controller.animateTo(indicatorIndex);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TabPageSelector(
              controller: _controller, selectedColor: ButtonColor.continueButton, color: ButtonColor.indicatorColor),
          const SizedBox(
            height: 50,
          ),
          _FloatingContinueButton(onPress: () {
            changeValue();
          }),
        ],
      ),
      appBar: AppBar(),
      body: TabBarView(
        controller: _controller,
        children: [FirstPage(), SecondPage(), ThreePage()],
      ),
    );
  }
}

class _FloatingContinueButton extends StatelessWidget with ProjectOnboardingStrings {
  _FloatingContinueButton({
    Key? key,
    required this.onPress,
  }) : super(key: key);
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: ButtonColor.continueButton,
          shape: const RoundedRectangleBorder(borderRadius: ProjectBorder.borderRadius16)),
      onPressed: onPress,
      child: SizedBox(
        height: MediaQuery.of(context).size.width * 0.15,
        width: MediaQuery.of(context).size.width * 0.75,
        child: Center(
            child: Text(
          continueButton,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}

class FirstPage extends StatelessWidget with ProjectOnboardingStrings, ImagePaths {
  FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            _TokotoText(),
            _DescriptionText(
              text: description1,
            ),
            Image.asset(splash1),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget with ProjectOnboardingStrings, ImagePaths {
  SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            _TokotoText(),
            _DescriptionText(
              text: description2,
            ),
            Image.asset(splash2),
          ],
        ),
      ),
    );
  }
}

class ThreePage extends StatelessWidget with ProjectOnboardingStrings, ImagePaths {
  ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            _TokotoText(),
            _DescriptionText(
              text: description3,
            ),
            Image.asset(splash3),
          ],
        ),
      ),
    );
  }
}

class _TokotoText extends StatelessWidget with ProjectOnboardingStrings {
  _TokotoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddingSymmetric.paddingVer8,
      child: Text(
        tokoto,
        style: GoogleFonts.roboto(color: ButtonColor.continueButton, fontSize: 36, fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _DescriptionText extends StatelessWidget {
  const _DescriptionText({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80, top: 20),
      child: Text(text, style: TextStyle(color: Colors.grey.shade700), textAlign: TextAlign.center),
    );
  }
}
