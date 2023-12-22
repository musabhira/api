import 'package:api4/apifreezed/controller/apiservice.dart';
import 'package:api4/apifreezed/model/apimodel.dart';

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'provider2.g.dart';

@riverpod
Future<List<ApiModel>?> fetchMovies(FetchMoviesRef ref) async {
  return await MovieService.getMovies();
}
