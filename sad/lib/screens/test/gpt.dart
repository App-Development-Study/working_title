import 'package:flutter/material.dart';
import 'package:sad/service/remote/gpt_client.dart';

class TestGpt extends StatefulWidget {
  @override
  _TestGptState createState() => _TestGptState();
}

class _TestGptState extends State<TestGpt> {
  String responseText = '';

  @override
  void initState() {
    super.initState();
    // 페이지에 진입하면 함수를 실행하고 응답을 받아옵니다.
    _generateTextWithPrompt('동물 이름 1개만 알려줘.');
  }

  Future<void> _generateTextWithPrompt(String prompt) async {
    try {
      // 위에서 제공한 함수 호출

      String response = await GptClient().generateTextWithPrompt(prompt);

      setState(() {
        // 응답을 상태에 저장하여 화면에 표시
        responseText = response ?? "Null";
      });
    } catch (e) {
      setState(() {
        // 오류가 발생하면 오류 메시지를 화면에 표시
        responseText = 'Error: $e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Directionality(
        textDirection: TextDirection.ltr, // 또는 rtl, 사용 중인 언어 및 레이아웃 방향에 맞게 설정
        child: Scaffold(
          appBar: AppBar(
            title: Text('Your Page'),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 응답을 표시하는 부분
                Text(
                  'Response: $responseText',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 20),
                // 새로운 prompt으로 함수 실행하는 버튼
                ElevatedButton(
                  onPressed: () {
                    _generateTextWithPrompt('Your new prompt');
                  },
                  child: Text('Generate Text'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
