import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meu_pet_care/constants.dart';
import 'package:meu_pet_care/screens/home/components/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Meu Pet Care',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: kTextColor,
            ),
      ),
      home: const HomeScreen(),
    );
  }
}
