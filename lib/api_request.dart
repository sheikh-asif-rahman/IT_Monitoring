import 'dart:convert';
import 'package:http/http.dart' as http;

class user {
  //for web, url willbe localhost
  //for app, url willbe 10.0.2.2
  String baseUrl = "http://localhost:8000/api/user/";
  Future<List> getAllUser() async {
    try {
      var response = await http.get(Uri.parse(baseUrl));
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (e) {
      return Future.error(e);
    }
  }
}
