import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'views/onboarding_page.dart';
import './views/pages.dart';

bool? seenOnboard;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // to show status bar
  SystemChrome.setEnabledSystemUIOverlays(
    [SystemUiOverlay.bottom, SystemUiOverlay.top],
  );

  // to load onboard screen for the first time only
  SharedPreferences pref = await SharedPreferences.getInstance();
  seenOnboard = pref.getBool('seenOnboard') ?? false; // if null set to false

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Onboarding Screen',
      theme: ThemeData(
        textTheme: GoogleFonts.manropeTextTheme(
          Theme.of(context).textTheme,
        ),
        primarySwatch: Colors.blue,
      ),
      home: seenOnboard == true ? SignUpPage() : const OnBoardingPage(),
    );
  }
}
