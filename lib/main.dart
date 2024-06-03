import 'package:covid_19/constants.dart';
import 'package:covid_19/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Covid-19 App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        colorScheme: ColorScheme.fromSeed(seedColor: kPrimaryColor),
        scaffoldBackgroundColor: kBackgroundColor,
        useMaterial3: true,
        textTheme: Theme.of(context).textTheme.apply(
              displayColor: kTextColor,
              fontFamily: "Dana",
            ),
        fontFamily: 'Dana'
      ),
      home: const HomeScreen(),
    );
  }
}
