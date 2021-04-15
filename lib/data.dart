import 'dart:convert';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:crypto/crypto.dart';

class Data {
  // ignore: non_constant_identifier_names
  static Future<int> Login(String email, String password) async {
    var uri = Uri.https('api-mapfest.herokuapp.com', 'user',
        {'token': '27b6f7a4-5a65-4f6a-af76-79d8fb01edd7', 'email': email});
    var response = await http.get(uri);
    var lista = convert.jsonDecode(response.body);
    lista = lista['data'];
    if ((lista as Map<dynamic, dynamic>).isNotEmpty) {
      var bytes1 = utf8.encode(password); // data being hashed
      var digest1 = sha256.convert(bytes1);

      if (lista['2']['0'].toString() == digest1.toString()) {
        return 0;
      } else {
        return 2;
      }
    } else {
      return 1;
    }
  }

  static Future<int> SignUp(String name, String password) async {
    var uri = Uri.https('api-mapfest.herokuapp.com', 'user',
        {'token': '27b6f7a4-5a65-4f6a-af76-79d8fb01edd7', 'email': name});
    var response = await http.get(uri);
    var lista = convert.jsonDecode(response.body);
    lista = lista['data'];
    if ((lista as Map<dynamic, dynamic>).isEmpty) {
      var bytes1 = utf8.encode(password); // data being hashed
      var digest1 = sha256.convert(bytes1);
      http.post(
          Uri.https('api-mapfest.herokuapp.com', 'user', {
            'token': '27b6f7a4-5a65-4f6a-af76-79d8fb01edd7',
            'email': name,
            'password': digest1.toString()
          }),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
          body: jsonEncode(<String, String>{}));
      return 0;
    } else {
      return 1;
    }
  }
}
