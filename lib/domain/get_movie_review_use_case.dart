import 'package:athenaslab_test/data/model/review_response.dart';
import 'package:athenaslab_test/data/repository/movie_repository.dart';
import 'package:athenaslab_test/domain/base_use_case.dart';

class GetMovieReviewUseCase extends BaseUseCase<ReviewResponse> {
  final MovieRepository movieRepository;
  final int id;

  GetMovieReviewUseCase(this.movieRepository, {required this.id});

  @override
  Future<ReviewResponse> perform() {
    return movieRepository.getMovieReview(id: id);
  }
}