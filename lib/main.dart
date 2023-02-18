import 'package:flutter/material.dart';
import 'package:writegpt_website/screens/about_us/about_us_screen.dart';
import 'package:writegpt_website/screens/onboarding/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WriteGPT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      routes: {
        '': (context) => const AboutUsScreen(),
        '/onboarding': (context) => const OnBoardingScreen(),
      },
      initialRoute: '/onboarding',
      onGenerateRoute: (settings) {
        if (settings.name == "") {
          return PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) => AboutUsScreen(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          );
        }
        if (settings.name == "/onboarding") {
          return PageRouteBuilder(
            pageBuilder: (context, animation1, animation2) =>
                OnBoardingScreen(),
            transitionDuration: Duration.zero,
            reverseTransitionDuration: Duration.zero,
          );
        }
        // Unknown route
        return MaterialPageRoute(builder: (_) => Container());
      },
      home: const OnBoardingScreen(),
    );
  }
}
