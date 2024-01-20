import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:sad/login_page/loginpage.dart';
// import 'package:sad/login_page/google_loginpage.dart';

void main() async {
  // 웹 환경에서 카카오 로그인을 정상적으로 완료하려면 runApp() 호출 전 아래 메서드 호출 필요
  WidgetsFlutterBinding.ensureInitialized();

  await initKakaoSdk(); // 비동기 함수 호출
  // print(await KakaoSdk.origin);
  runApp(const MyApp());
}

Future<void> initKakaoSdk() async {
  KakaoSdk.init(nativeAppKey: 'ddb61127a6856b0d518fce6aa9ae9e92');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter LoginPage',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: "Pretendard",
      ),
      home: const LoginPage(),
      // home: const SampleScreen(),
    );
  }
}
