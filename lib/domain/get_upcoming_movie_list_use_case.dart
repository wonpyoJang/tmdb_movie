import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetUpcomingMovieListUseCase extends BaseUseCase<MovieResponse> {
  final MovieRepository movieRepository;

  GetUpcomingMovieListUseCase(this.movieRepository);

  @override
  Future<MovieResponse> perform() {
    return movieRepository.getMovies(type: MovieApiCallType.UPCOMING);
  }
}