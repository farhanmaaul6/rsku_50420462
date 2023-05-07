import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:rsku_50420462/pages/login_page.dart';

class onboardingscreen extends StatefulWidget {
  const onboardingscreen({super.key});

  @override
  State<onboardingscreen> createState() => _onboardingscreenState();
}

class _onboardingscreenState extends State<onboardingscreen> {
  @override
  Widget build(BuildContext context) {
    const bodyStyle = TextStyle(fontSize: 19.0);

    const pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700),
      bodyTextStyle: bodyStyle,
      bodyPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: Colors.white,
      imagePadding: EdgeInsets.fromLTRB(0.0, 50, 0.0, 0.0),
    );

    return IntroductionScreen(
      globalBackgroundColor: Colors.white,
      pages: [
        PageViewModel(
          title: 'Mencari Dokter Terpercaya',
          body:
              "Selalu menjadi pilihan yang tepat dalam mencari dokter yang professional",
          image: Image.asset(
            'images/Screen1.png',
            width: 550,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Memberikan Pelayanan Terbaik',
          body:
              "Menjadi tempat untuk para dokter yang ahli dan kompeten pada bidangnya",
          image: Image.asset(
            'images/Screen2.png',
            width: 550,
          ),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: 'Pendaftaran Mudah',
          body:
              "Selalu memberikan pelayanan yang baik agar pasien dapat bertemu dengan dokter secepatnya",
          image: Image.asset(
            'images/Screen3.png',
            width: 550,
          ),
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => LoginPage()));
      },
      showSkipButton: true,
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      dotsFlex: 3,
      nextFlex: 1,
      back: Icon(Icons.arrow_back),
      skip: Text(
        'Skip',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      next: Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      dotsDecorator: DotsDecorator(
          size: Size(10, 10),
          color: Colors.grey,
          activeSize: Size(22, 10),
          activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25)))),
    );
  }
}
