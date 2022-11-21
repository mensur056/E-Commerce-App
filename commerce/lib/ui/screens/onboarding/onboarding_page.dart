import 'package:commerce/const/paths/image_paths.dart';
import 'package:commerce/const/strings/onboarding_strings.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> with TickerProviderStateMixin {
  late final TabController _controller;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: TabBarView(
        controller: _controller,
        children: const [FirstPage(), SecondPage(), ThreePage()],
      ),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(ProjectOnboardingStrings.tokoto),
          const Text(ProjectOnboardingStrings.welcome),
          Image.asset(ImagePaths.splash1),
          ElevatedButton(
            onPressed: () {},
            child: const Text(ProjectOnboardingStrings.continueButton),
          )
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(ProjectOnboardingStrings.tokoto),
          const Text(ProjectOnboardingStrings.welcome),
          Image.asset(ImagePaths.splash2),
          ElevatedButton(
            onPressed: () {},
            child: const Text(ProjectOnboardingStrings.continueButton),
          )
        ],
      ),
    );
  }
}

class ThreePage extends StatelessWidget {
  const ThreePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text(ProjectOnboardingStrings.tokoto),
          const Text(ProjectOnboardingStrings.welcome),
          Image.asset(ImagePaths.splash3),
          ElevatedButton(
            onPressed: () {},
            child: const Text(ProjectOnboardingStrings.continueButton),
          )
        ],
      ),
    );
  }
}
