import 'package:flutter/material.dart';
import 'package:sad/splash.dart';
import 'package:sad/screens/test/gpt.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: '.env');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TestGpt();
  }
}
