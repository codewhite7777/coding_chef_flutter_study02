import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:onboarding/main.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      done: const Text('Done'),
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => const MyPage(),
          ),
        );
      },
      curve: Curves.bounceOut,
      next: const Icon(Icons.arrow_forward),
      showSkipButton: true,
      skip: const Text('skip'),
      dotsDecorator: DotsDecorator(
        color: Colors.cyan,
        size: const Size(10, 10),
        activeSize: const Size(22, 10),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        activeColor: Colors.red,
      ),
      pages: [
        PageViewModel(
            image: Image.asset('asset/img/page1.png'),
            decoration: getPageDecoration(),
            title: 'Welcome to My App',
            body: 'This is the first page'),
        PageViewModel(
            image: Image.asset('asset/img/page2.png'),
            decoration: getPageDecoration(),
            title: 'Welcome to My App',
            body: 'This is the second page'),
        PageViewModel(
            image: Image.asset('asset/img/page3.png'),
            decoration: getPageDecoration(),
            title: 'Welcome to My App',
            body: 'This is the third page'),
      ],
    );
  }

  PageDecoration getPageDecoration() {
    return const PageDecoration(
      titleTextStyle: TextStyle(
        fontSize: 28.0,
        fontWeight: FontWeight.bold,
      ),
      bodyTextStyle: TextStyle(
        fontSize: 18.0,
        color: Colors.blue,
      ),
      imagePadding: EdgeInsets.all(40.0),
      pageColor: Colors.orange,
    );
  }
}
