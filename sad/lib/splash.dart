import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: [
            // 배경 이미지
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // 중앙에 위치한 로고 이미지
            Center(
              child: Image.asset(
                'assets/images/yellologo.png',
                width: 200, // 로고 이미지의 너비
                height: 200, // 로고 이미지의 높이
              ),
            ),
          ],
        ),
      ),
    );
  }
}
