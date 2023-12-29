// import 'dart:convert';
// import 'package:http/http.dart' as http;

// class user {
//   String baseUrl = "http://10.0.2.2:8000/api/user/";
//   Future<List> getAllUser() async {
//     try {
//       var response = await http.get(Uri.parse(baseUrl));
//       if (response.statusCode == 200) {
//         return jsonDecode(response.body);
//       } else {
//         return Future.error("Server Error");
//       }
//     } catch (e) {
//       return Future.error(e);
//     }
//   }
// }


import 'dart:convert';
import 'package:http/http.dart' as http;

class user {
  late String baseUrl;

  user() {
    if (isWeb()) {
      baseUrl = "http://192.168.0.103:8000/api/user/";
    } else {
      baseUrl = "http://192.168.0.103:8000/api/user/";
    }
  }

  bool isWeb() {
    return identical(0, 0.0);
  }

  Future<List> getAllUser() async {
    try {
      var headers = isWeb()
        ? {
            'Content-Type': 'application/json',
            'Access-Control-Allow-Origin': '*',
          }
        : {'Content-Type': 'application/json'};

      var response = await http.get(
        Uri.parse(baseUrl),
        headers: headers,
      );

      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        return Future.error("Server Error");
      }
    } catch (e) {
      return Future.error(e.toString());
    }
  }
}
