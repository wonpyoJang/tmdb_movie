import 'dart:convert';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/secret.dart';
import 'package:http/http.dart' as http;

import 'movie_api.dart';

class MovieApiImpl implements MovieApi {
  @override
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
  }) async {
    try {
      var queryParameters = {
        'api_key': API_KEY,
      };

      Uri uri = Uri.https('api.themoviedb.org',
          endpointFromType[type] ?? "/3/movie/now_playing", queryParameters);

      final response = await http.get(uri);
      if (response.statusCode == 200) {
        Map<String, dynamic> mapResponse = json.decode(response.body);

        return MovieResponse.fromJson(mapResponse);
      } else {
        throw Exception("Error Code: ${response.statusCode}");
      }
    } catch (e) {
      throw Exception("get now playing movie is failed!");
    }
  }
}
