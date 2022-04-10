import '../models/models.dart';
import 'package:http/http.dart' as http;

class LoadService {
  Future<List<Post>?> loadPosts() async {
    var client = http.Client();
    var url = 'https://jsonplaceholder.typicode.com/posts';

    var uri = Uri.parse(url);
    var resp = await client.get(uri);
    if (resp.statusCode == 200) {
      var json = resp.body;
      return postFromCustomJson(json);
    }
  }
}
