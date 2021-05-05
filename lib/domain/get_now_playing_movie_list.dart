import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetNowPlayingMovieListUseCase extends BaseUseCase<MovieResponse> {
  final MovieRepository movieRepository;

  GetNowPlayingMovieListUseCase(this.movieRepository);

  @override
  Future<MovieResponse> perform() {
    return movieRepository.getMovies(type: MovieApiCallType.NOW_PLAYING);
  }
}