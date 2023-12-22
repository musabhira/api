import 'dart:developer';

import 'package:api4/apifreezed/model/apimodel.dart';
import 'package:dio/dio.dart';

class MovieService {
  static const token =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NDQ4MTc5MzJjZTUxZmY1ZTNmOTYzMmI0ZDU1Mjk0NyIsInN1YiI6IjY1ODI3MjZkY2E4MzU0MTQ5NGQ2Y2I2YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bM5xnoMNVg94-obtZ_C6SOKHn4B6suv0r5izsPxoaUA';
  static final Dio dio = Dio();

  static Future<List<ApiModel>?> getMovies() async {
    final url = 'https://api.themoviedb.org/3/discover/movie';

    try {
      final response = await dio.get(
        url,
        options: Options(headers: {'Authorization': 'Bearer $token'}),
      );

      if (response.statusCode == 200) {
        final data = response.data;
        final movies = <ApiModel>[];
        for (final result in data['results']) {
          movies.add(ApiModel.fromJson(result));
        }

        return movies;
      }
    } catch (e) {
      log(e.toString());
    }

    return null;
  }
}


// import 'package:api4/apifreezed/model/apimodel.dart';
// import 'package:http/http.dart' as http;

// import 'dart:developer';

// class MovieService {
//   static const token =
//       'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NDQ4MTc5MzJjZTUxZmY1ZTNmOTYzMmI0ZDU1Mjk0NyIsInN1YiI6IjY1ODI3MjZkY2E4MzU0MTQ5NGQ2Y2I2YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bM5xnoMNVg94-obtZ_C6SOKHn4B6suv0r5izsPxoaUA';
//   static final http.Client client = http.Client();
//   static Future<List<ApiModel>?> getMovies() async {
//     final url = Uri.parse('https://api.themoviedb.org/3/discover/movie');
//     try {
//       final response =
//           await client.get(url, headers: {'Authorization': 'Bearer $token'});
//       if (response.statusCode == 200) {
//         final data = jsonDecode(response.body);
//         final movies = <ApiModel>[];
//         for (final result in data['results']) {
//           movies.add(ApiModel.fromJson(result));
//         }

//         return movies;
//       }
//     } catch (e) {
//       log(e.toString());
//     }
//     return null;
//   }
// }

























// class TmdbApi {
//   final String apiKey = '844817932ce51ff5e3f9632b4d552947';
//   final String baseUrl = 'https://api.themoviedb.org/3';
//   final readAccessToken =
//       'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI4NDQ4MTc5MzJjZTUxZmY1ZTNmOTYzMmI0ZDU1Mjk0NyIsInN1YiI6IjY1ODI3MjZkY2E4MzU0MTQ5NGQ2Y2I2YSIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.bM5xnoMNVg94-obtZ_C6SOKHn4B6suv0r5izsPxoaUA';

//   Future<List<Movies>> getPopularMovies() async {
//     final url = '$baseUrl/account/20845662';
//     final response = await http.get(Uri.parse(url), headers: {
//       'Authorization': 'Bearer $readAccessToken',
//     });

   
//     if (response.statusCode == 200) {
//       final Map<String, dynamic> data = json.decode(response.body);
//       final List<Movie> movies = List.from(data['results'])
//           .map((movieData) => Movie.fromJson(movieData))
//           .toList();
//       return movies;
//     } else {
//       throw Exception('Failed to get popular movies');
//     }
//   }
// }
