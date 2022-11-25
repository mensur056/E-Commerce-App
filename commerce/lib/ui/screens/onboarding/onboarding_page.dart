import 'package:commerce/const/border/border_radius.dart';
import 'package:commerce/const/colors/button_colors.dart';
import 'package:commerce/const/padding/padding_symmetric.dart';
import 'package:commerce/const/paths/image_paths.dart';
import 'package:commerce/const/strings/onboarding_strings.dart';
import 'package:commerce/ui/screens/signin/signin_page.dart';
import 'package:commerce/ui/widgets/abstract_class.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        children: const [FirstPage(), SecondPage(), ThreePage()],
      ),
    );
  }
}

class _FloatingContinueButton extends StatelessWidget {
  const _FloatingContinueButton({
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
          ProjectOnboardingStrings.continueButton,
          style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            const _TokotoText(),
            const _DescriptionText(
              text: ProjectOnboardingStrings.description1,
            ),
            Image.asset(ImagePaths.splash1),
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            const _TokotoText(),
            const _DescriptionText(
              text: ProjectOnboardingStrings.description2,
            ),
            Image.asset(ImagePaths.splash2),
          ],
        ),
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: ProjectPaddingSymmetric.paddingHor16,
        child: Column(
          children: [
            const _TokotoText(),
            const _DescriptionText(
              text: ProjectOnboardingStrings.description3,
            ),
            Image.asset(ImagePaths.splash3),
          ],
        ),
      ),
    );
  }
}

class _TokotoText extends StatelessWidget {
  const _TokotoText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: ProjectPaddingSymmetric.paddingVer8,
      child: Text(
        ProjectOnboardingStrings.tokoto,
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
