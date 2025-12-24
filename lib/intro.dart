import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami/home.dart';

class intro extends StatelessWidget {
  intro({super.key});

  static const routName = "intro";
  List<PageViewModel> listPagesViewModel = [
    PageViewModel(
      titleWidget: Text(
        "Welcome To Islmi App",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
      ),
      body: "Welcome to the app! This is a description of how it works.",
      image: Image.asset("assets/images/intro1.png"),
    ),

    PageViewModel(
      titleWidget: Text(
        "Welcome To Islmi App",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
      ),
      bodyWidget: Text(
        "We Are Very Excited To Have You In Our Community",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro2.png"),
    ),
    PageViewModel(
      titleWidget: Text(
        "Reading the Quran",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
      ),
      bodyWidget: Text(
        "Read, and your Lord is the Most Generous",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
      ),
      image: Image.asset("assets/images/intro3.png"),
    ),
    PageViewModel(
      titleWidget: Text(
        "Bearish",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
      ),
      bodyWidget: Text(
        "Praise the name of your Lord, the Most High",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro4.png"),
    ),
    PageViewModel(
      titleWidget: Text(
        "Holy Quran Radio",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
        textAlign: TextAlign.center,
      ),
      bodyWidget: Text(
        "You can listen to the Holy Quran Radio through the application for free and easily",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color(0xffE2BE7F),
        ),
        textAlign: TextAlign.center,
      ),
      image: Image.asset("assets/images/intro5.png"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IntroductionScreen(
        showSkipButton: true,
        onSkip: (){
          Navigator.pushReplacementNamed(context,home.routName);
        },
        skip:  Text(
          "Skip",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xffE2BE7F),
          ),
        ),
        showBackButton: true,
        back: Text(
          "Back",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xffE2BE7F),
          ),
        ),

        bodyPadding: EdgeInsets.only(top: 266),
        globalHeader: Image.asset("assets/images/Group 31.png"),
        pages: listPagesViewModel,
        globalBackgroundColor: Color(0XFF202020),
        dotsDecorator: DotsDecorator(
          color: Color(0XFF707070),
          activeColor: Color(0xffE2BE7F),
          activeSize: Size(18, 7),
          activeShape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(color: Colors.transparent)
          )
        ),
        showNextButton: false,
        done: const Text(
          "Done",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Color(0xffE2BE7F),
          ),
        ),
        onDone: () {
          Navigator.pushReplacementNamed(context, home.routName);
        },
      ),
    );
  }
}
