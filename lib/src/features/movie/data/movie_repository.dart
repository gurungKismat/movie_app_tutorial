import 'package:dio/dio.dart';
import 'package:movie_app_tutorial/src/utils/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../env/env.dart';

part 'movie_repository.g.dart';

class MovieRepository {
  const MovieRepository({
    required this.dio,
    required this.apiKey,
  });

  final Dio dio;
  final String apiKey;
}

@riverpod
MovieRepository movieRepository(MovieRepositoryRef ref) => MovieRepository(
      dio: ref.read(dioProvider),
      apiKey: Env.tmdbApiKey,
);
