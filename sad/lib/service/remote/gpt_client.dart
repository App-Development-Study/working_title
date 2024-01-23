import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class GptClient {
  Future<String> generateTextWithPrompt(String prompt) async {
    try {
      var key = dotenv.env['open.ai.key'];

      var requestBody = jsonEncode({
        "model": "gpt-3.5-turbo",
        "messages": [
          {"role": "user", "content": prompt}
        ]
      });

      debugPrint('Request Body: $requestBody');

      var response = await http.post(
        Uri.parse('https://api.openai.com/v1/chat/completions'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $key',
        },
        body: requestBody,
      );

      String decodeResponse = utf8.decode(response.bodyBytes);

      if (response.statusCode == 200) {
        var data = jsonDecode(decodeResponse);
        var assistantResponse = data['choices'][0]['message']['content'];
        debugPrint('Assistant Response: $assistantResponse');
        return assistantResponse;
      } else {
        debugPrint('Error Status Code: ${response.statusCode}');
        debugPrint('Error Response Body: ${response.body}');
        return 'Error: ${response.statusCode}';
      }
    } catch (e) {
      debugPrint('Exception during request: $e');
      return "Error: $e";
    }
  }
}
