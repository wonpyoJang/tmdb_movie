import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';

abstract class MovieRepository{
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
  });
}