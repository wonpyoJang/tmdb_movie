import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetNextNowPlayingMovieListUseCase{
  final MovieRepository movieRepository;

  GetNextNowPlayingMovieListUseCase(this.movieRepository);

  Future<MovieResponse> perform({required int page}) {
    return movieRepository.getMovies(type: MovieApiCallType.NOW_PLAYING, page: page);
  }
}