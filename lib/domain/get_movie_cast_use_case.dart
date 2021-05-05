import 'package:athenaslab_test/data/model/cast_response.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetMovieCastUseCase extends BaseUseCase<CastResponse> {
  final MovieRepository movieRepository;
  final int id;

  GetMovieCastUseCase(this.movieRepository, {required this.id});

  @override
  Future<CastResponse> perform() {
    return movieRepository.getMovieCast(id: id);
  }
}
