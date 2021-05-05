import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository{
  final MovieApi movieApi;

  MovieRepositoryImpl(this.movieApi);

  @override
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
  }) {
    return movieApi.getMovies(type: type);
  }
}