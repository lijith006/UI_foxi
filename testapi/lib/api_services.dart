import 'dart:convert';
// import 'package:testapi/model.dart';
import 'package:http/http.dart' as http;
import 'package:testapi/movies_fact/movies_fact.dart';

Future<MoviesFact> fetchMovie(String title, String apiKey) async {
  // final response = await http
  //     .get(Uri.parse('http://www.omdbapi.com/?i=tt3896198&apikey=8b0f68c1'));

  final response = await http
      .get(Uri.parse('https://www.omdbapi.com/?t=$title&apikey=$apiKey'));

  if (response.statusCode == 200) {
    final json = jsonDecode(response.body);
    return MoviesFact.fromJson(json);
  } else {
    throw Exception('Failed to load movie');
  }
}
