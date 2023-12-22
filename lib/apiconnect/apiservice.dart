import 'package:api4/apiconnect/model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static final http.Client _client = http.Client();

  Future<List<Fake>?> getPosts() async {
    final url = Uri.parse(Appurls.baseurl);

    try {
      http.Response response = await _client.get(url);

      print("${response.statusCode}");

      if (response.statusCode == 200) {
        print(response.body);
        return fakeFromJson(response.body);
      }

      return null;
    } catch (e) {
      print('An error occurred: $e');
      return null;
    }
  }
}

class Appurls {
  static const String baseurl = 'https://fakestoreapi.com/products';
  static const String postspath = '/protuct';   
}
