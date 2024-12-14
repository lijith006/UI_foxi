import 'dart:convert';

import 'package:api_works/number_response/number_response.dart';
import 'package:http/http.dart' as http;

Future<NumberResponse> getnumber({required String number}) async {
  final response =
      await http.get(Uri.parse('http://numbersapi.com/$number?json'));
  print(response.body);
  final bodyAsJson = jsonDecode(response.body) as Map<String, dynamic>;

  final data = NumberResponse.fromJson(bodyAsJson);
  return data;
}
