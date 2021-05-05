import 'package:athenaslab_test/data/model/movie_detail.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetMovieDetailUseCase extends BaseUseCase<MovieDetail> {
  final MovieRepository movieRepository;
  final int id;

  GetMovieDetailUseCase(this.movieRepository, {required this.id});

  @override
  Future<MovieDetail> perform() {
    return movieRepository.getMovieDetail(id: id);
  }
}