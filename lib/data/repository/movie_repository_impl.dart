import 'package:athenaslab_test/data/model/cast_response.dart';
import 'package:athenaslab_test/data/model/movie_detail.dart';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/model/review_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';

class MovieRepositoryImpl implements MovieRepository{
  final MovieApi movieApi;

  MovieRepositoryImpl(this.movieApi);

  @override
  Future<MovieResponse> getMovies({
    required MovieApiCallType type,
    int page = 0
  }) {
    return movieApi.getMovies(type: type, page: page);
  }

  @override
  Future<MovieDetail> getMovieDetail({
    required int id,
  }) {
    return movieApi.getMovieDetail(id: id);
  }

  @override
  Future<CastResponse> getMovieCast({
    required int id,
  }) {
    return movieApi.getMovieCast(id: id);
  }


  @override
  Future<ReviewResponse> getMovieReview({
    required int id,
  }) {
    return movieApi.getMovieReview(id: id);
  }
}