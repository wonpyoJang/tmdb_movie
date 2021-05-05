import 'package:athenaslab_test/data/model/movie.dart';
import 'package:athenaslab_test/data/model/movie_response.dart';
import 'package:athenaslab_test/data/remote/movie_api_impl.dart';
import 'package:athenaslab_test/data/repository/movie_repository_impl.dart';
import 'package:athenaslab_test/domain/get_now_playing_movie_list.dart';
import 'package:athenaslab_test/domain/get_popular_movie_list_use_case.dart';
import 'package:athenaslab_test/domain/get_top_rated_movie_list_use_case.dart';
import 'package:athenaslab_test/domain/get_upcoming_movie_list_use_case.dart';

class ViewModelPokemonList {
  List<Movie> nowPlayingMovies = [];
  List<Movie> popularMovies = [];
  List<Movie> topRatedMovies = [];
  List<Movie> upcomingMovies = [];

  GetNowPlayingMovieListUseCase getNowPlayingMovieListUseCase =
      GetNowPlayingMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetPopularMovieListUseCase getPopularMovieListUseCase =
      GetPopularMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetTopRatedMovieListUseCase getTopRatedMovieListUseCase =
      GetTopRatedMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));
  GetUpcomingMovieListUseCase getUpcomingMovieListUseCase =
      GetUpcomingMovieListUseCase(MovieRepositoryImpl(MovieApiImpl()));

  void getInitialContents() async {
    try {
      MovieResponse result = await getNowPlayingMovieListUseCase.perform();
      nowPlayingMovies = result.results;

      result = await getPopularMovieListUseCase.perform();
      popularMovies = result.results;

      result = await getTopRatedMovieListUseCase.perform();
      topRatedMovies = result.results;

      result = await getUpcomingMovieListUseCase.perform();
      upcomingMovies = result.results;
    } catch (e) {
      await Future.delayed(Duration(milliseconds: 500));
      throw "데이터를 가져오지 못했습니다.";
    }
  }
}
