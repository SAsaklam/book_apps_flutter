import 'package:flutter/material.dart';

class EnglishScreens extends StatefulWidget {
  const EnglishScreens({super.key});

  @override
  State<EnglishScreens> createState() => _EnglishScreensState();
}

class _EnglishScreensState extends State<EnglishScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("English")));
  }
}
